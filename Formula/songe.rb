class Songe < Formula
  include Language::Python::Virtualenv

  desc "Local hindsight distillation for a model that sleeps"
  homepage "https://github.com/sous-labs/songe"
  # Pinned reservation artifact. The release updater replaces these three fields
  # from PyPI and removes the disable line after verifying the real CLI wheel.
  url "https://files.pythonhosted.org/packages/19/3b/ac8533e3dd3fe71e501aba46c742a25209b9cde57f2296e4e7a628abac54/songe-0.0.0.dev0-py3-none-any.whl", using: :nounzip
  version "0.0.0.dev0"
  sha256 "2ed2600c906bb188de35b5df2f9f448c915bde562680743668eba48474b60ed7"

  disable! date: "2026-11-10", because: "only the PyPI name reservation exists"

  depends_on "python@3.12"

  def install
    python = Formula["python@3.12"].opt_bin/"python3.12"
    virtualenv_create(libexec, python, system_site_packages: false)
    # This third-party tap permits PyPI dependency wheels. Homebrew's helper
    # disables dependency resolution, so invoke pip explicitly in our virtualenv.
    system python, "-m", "pip", "--python=#{libexec}/bin/python", "install",
           "--isolated", "--disable-pip-version-check", "--no-cache-dir",
           "--index-url=https://pypi.org/simple", "--only-binary=:all:",
           buildpath/"songe-#{version}-py3-none-any.whl"
    bin.install_symlink libexec/"bin/songe"
  end

  def caveats
    <<~EOS
      Run songe init to measure your machine and configure Songe.
    EOS
  end

  test do
    ENV["SONGE_DATA_DIR"] = testpath/"data"
    assert_equal version.to_s, shell_output("#{bin}/songe --version").strip
  end
end
