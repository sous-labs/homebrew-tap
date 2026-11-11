# /// script
# requires-python = ">=3.11"
# dependencies = ["packaging>=24.2,<27"]
# ///
"""Pin a verified Songe release and its platform-specific offline wheel resources.

Requires Python 3.11+, packaging, and uv on PATH (only on the release runner).
"""

import argparse
import configparser
import hashlib
import io
import json
import os
import re
import subprocess
import tempfile
import tomllib
import urllib.parse
import urllib.request
import zipfile
from dataclasses import dataclass
from email.parser import BytesParser
from pathlib import Path

from packaging.tags import compatible_tags, cpython_tags, mac_platforms
from packaging.utils import parse_wheel_filename
from packaging.version import Version

NETWORK_TIMEOUT_SECONDS = 60
INSTALLER_VERSION = "1.1.0"
BOOTSTRAP_DISABLE = (
    '  disable! date: "2026-11-10", because: "only the PyPI name reservation exists"\n'
)
RESOURCE_START = "  # BEGIN GENERATED WHEEL RESOURCES\n"
RESOURCE_END = "  # END GENERATED WHEEL RESOURCES\n"


@dataclass(frozen=True)
class Target:
    name: str
    os: str
    arch: str
    uv_platform: str

    def tags(self):
        if self.os == "macos":
            arch = "arm64" if self.arch == "arm" else "x86_64"
            platforms = list(mac_platforms((14, 0), arch))
        else:
            arch = "aarch64" if self.arch == "arm" else "x86_64"
            platforms = [f"manylinux_2_{n}_{arch}" for n in range(28, 16, -1)]
            platforms += [f"manylinux2014_{arch}"]
            if arch == "x86_64":
                platforms += ["manylinux2010_x86_64", "manylinux1_x86_64"]
            platforms += [f"linux_{arch}"]
        return list(cpython_tags((3, 12), ["cp312"], platforms)) + list(
            compatible_tags((3, 12), "cp312", platforms)
        )


TARGETS = (
    Target("macos-arm64", "macos", "arm", "aarch64-apple-darwin"),
    Target("macos-x86_64", "macos", "intel", "x86_64-apple-darwin"),
    Target("linux-arm64", "linux", "arm", "aarch64-manylinux_2_28"),
    Target("linux-x86_64", "linux", "intel", "x86_64-manylinux_2_28"),
)


def release_version(value):
    if not re.fullmatch(r"[0-9]+\.[0-9]+\.[0-9]+(?:(?:a|b|rc)[0-9]+)?", value):
        raise ValueError("Expected a release version such as 0.1.0 or 0.1.0a2")
    parsed = Version(value)
    if str(parsed) != value:
        raise ValueError("Expected a canonical release version")
    return parsed


def validate_artifact(url, checksum, filename):
    parsed = urllib.parse.urlsplit(url)
    if (
        parsed.scheme != "https" or parsed.netloc != "files.pythonhosted.org"
        or Path(parsed.path).name != filename or parsed.query or parsed.fragment
        or not re.fullmatch(r"[A-Za-z0-9_.+-]+\.whl", filename)
        or not re.fullmatch(r"[0-9a-f]{64}", checksum)
    ):
        raise ValueError("Unexpected wheel URL or SHA256 from PyPI")


def release_wheel(metadata, version):
    release_version(version)
    if metadata["info"]["name"] != "songe" or metadata["info"]["version"] != version:
        raise ValueError("PyPI project/version does not match the requested release")
    filename = f"songe-{version}-py3-none-any.whl"
    candidates = [
        file for file in metadata["urls"]
        if file["filename"] == filename and not file.get("yanked", False)
    ]
    if len(candidates) != 1:
        raise ValueError("Expected exactly one non-yanked universal wheel")
    wheel = candidates[0]
    validate_artifact(wheel["url"], wheel["digests"]["sha256"], filename)
    return wheel


def verify_wheel(data, wheel, version):
    if hashlib.sha256(data).hexdigest() != wheel["digests"]["sha256"]:
        raise ValueError("Wheel SHA256 does not match PyPI")
    try:
        with zipfile.ZipFile(io.BytesIO(data)) as archive:
            prefix = f"songe-{version}.dist-info/"
            metadata = BytesParser().parsebytes(archive.read(prefix + "METADATA"))
            entry_points = configparser.ConfigParser(interpolation=None)
            entry_points.read_string(
                archive.read(prefix + "entry_points.txt").decode("utf-8")
            )
            if (
                metadata["Name"] != "songe" or metadata["Version"] != version
                or entry_points.get("console_scripts", "songe", fallback=None)
                != "songe.cli:main" or "songe/cli.py" not in archive.namelist()
            ):
                raise ValueError("Wheel does not contain the expected Songe CLI")
    except (KeyError, zipfile.BadZipFile, configparser.Error) as error:
        raise ValueError("Wheel does not contain the expected Songe CLI") from error


def select_wheel(package, target):
    ranks = {tag: index for index, tag in enumerate(target.tags())}
    candidates = []
    for wheel in package.get("wheels", []):
        filename = Path(urllib.parse.urlsplit(wheel["url"]).path).name
        validate_artifact(wheel["url"], wheel["hashes"]["sha256"], filename)
        name, version, _, tags = parse_wheel_filename(filename)
        if name != package["name"] or version != Version(package["version"]):
            raise ValueError("Resolved wheel name/version does not match package")
        matches = [ranks[tag] for tag in tags if tag in ranks]
        if matches:
            candidates.append((min(matches), wheel["url"], wheel["hashes"]["sha256"]))
    if not candidates:
        raise ValueError(f"No compatible wheel for {package['name']} on {target.name}")
    _, url, checksum = min(candidates)
    return {"url": url, "sha256": checksum}


def resolve_resources(wheel, version):
    # Resolve the published artifact, never this checkout's pyproject or uv.lock.
    # Freeze the index at publication so reruns do not silently upgrade dependencies.
    cutoff = wheel["upload_time_iso_8601"]
    environment = {key: value for key, value in os.environ.items()
                   if not key.startswith("UV_")}
    if "UV_CACHE_DIR" in os.environ:
        environment["UV_CACHE_DIR"] = os.environ["UV_CACHE_DIR"]
    environment["MACOSX_DEPLOYMENT_TARGET"] = "14.0"
    resolved = {}
    with tempfile.TemporaryDirectory(prefix="songe-formula-") as directory:
        directory = Path(directory)
        requirements = directory / "requirements.in"
        requirements.write_text(
            f"songe @ {wheel['url']}#sha256={wheel['digests']['sha256']}\n"
            f"installer=={INSTALLER_VERSION}\n", encoding="utf-8",
        )
        for target in TARGETS:
            output = directory / f"pylock.{target.name}.toml"
            subprocess.run(
                ["uv", "--no-config", "--no-python-downloads", "pip", "compile",
                 str(requirements), "--python-version", "3.12",
                 "--python-platform", target.uv_platform, "--only-binary", ":all:",
                 "--default-index", "https://pypi.org/simple", "--exclude-newer", cutoff,
                 "--format", "pylock.toml", "--no-header", "--quiet",
                 "--output-file", str(output)],
                env=environment, check=True, timeout=600,
            )
            lock = tomllib.loads(output.read_text(encoding="utf-8"))
            packages = {}
            found_release = False
            for package in lock["packages"]:
                name = package["name"]
                if name == "songe":
                    if package.get("version") != version:
                        raise ValueError("Resolver did not retain the requested Songe version")
                    found_release = True
                    continue
                if not re.fullmatch(r"[a-z0-9]+(?:-[a-z0-9]+)*", name) or name in packages:
                    raise ValueError("Unexpected or duplicate resolved package name")
                packages[name] = select_wheel(package, target)
            if not found_release or "installer" not in packages:
                raise ValueError("Resolver omitted Songe or installer")
            resolved[target.name] = packages
            print(f"Resolved {len(packages)} dependency wheels for {target.name}")
    return resolved


def render_resources(resolved):
    if set(resolved) != {target.name for target in TARGETS}:
        raise ValueError("Expected a complete wheel set for every supported target")
    common = {
        name: artifact for name, artifact in resolved[TARGETS[0].name].items()
        if all(packages.get(name) == artifact for packages in resolved.values())
    }

    def blocks(packages, indent):
        result = ""
        for name, artifact in sorted(packages.items()):
            validate_artifact(artifact["url"], artifact["sha256"],
                              Path(artifact["url"]).name)
            result += (
                f'{indent}resource "{name}" do\n'
                f'{indent}  url "{artifact["url"]}", using: :nounzip\n'
                f'{indent}  sha256 "{artifact["sha256"]}"\n'
                f"{indent}end\n\n"
            )
        return result

    result = RESOURCE_START + blocks(common, "  ")
    for os_name in ("macos", "linux"):
        result += f"  on_{os_name} do\n"
        for target in (target for target in TARGETS if target.os == os_name):
            packages = {name: artifact for name, artifact in resolved[target.name].items()
                        if name not in common}
            result += f"    on_{target.arch} do\n"
            result += blocks(packages, "      ").rstrip() + "\n"
            result += "    end\n"
        result += "  end\n\n"
    return result + RESOURCE_END


def update_formula(source, wheel, version, resolved):
    target = release_version(version)
    current = re.search(r'^  version "([^"]+)"$', source, re.MULTILINE)
    if current is None:
        raise ValueError("Formula version field is missing")
    if current[1] != "0.0.0.dev0" and target < release_version(current[1]):
        raise ValueError("Refusing to downgrade the formula")
    replacements = {
        "url": f'  url "{wheel["url"]}", using: :nounzip',
        "version": f'  version "{version}"',
        "sha256": f'  sha256 "{wheel["digests"]["sha256"]}"',
    }
    for field, replacement in replacements.items():
        source, count = re.subn(
            rf'^  {field} ".*$', lambda _, value=replacement: value,
            source, flags=re.MULTILINE,
        )
        if count != 1:
            raise ValueError(f"Expected exactly one formula {field} field")
    source, count = re.subn(
        re.escape(RESOURCE_START) + r".*?" + re.escape(RESOURCE_END),
        lambda _: render_resources(resolved), source, flags=re.DOTALL,
    )
    if count != 1:
        raise ValueError("Expected exactly one generated resource section")
    return source.replace(BOOTSTRAP_DISABLE, "")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("version", help="Stable or preview version without the v prefix")
    parser.add_argument("--formula", type=Path, default=Path("Formula/songe.rb"))
    args = parser.parse_args()
    release_version(args.version)
    with urllib.request.urlopen(
        f"https://pypi.org/pypi/songe/{args.version}/json",
        timeout=NETWORK_TIMEOUT_SECONDS,
    ) as response:
        wheel = release_wheel(json.load(response), args.version)
    with urllib.request.urlopen(wheel["url"], timeout=NETWORK_TIMEOUT_SECONDS) as response:
        verify_wheel(response.read(), wheel, args.version)
    resources = resolve_resources(wheel, args.version)
    updated = update_formula(
        args.formula.read_text(encoding="utf-8"), wheel, args.version, resources,
    )
    args.formula.write_text(updated, encoding="utf-8")
    print(f"Pinned Songe {args.version} to {wheel['digests']['sha256']}")


if __name__ == "__main__":
    main()
