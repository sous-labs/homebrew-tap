class Songe < Formula
  include Language::Python::Virtualenv

  desc "Local hindsight distillation for a model that sleeps"
  homepage "https://github.com/sous-labs/songe"
  # Pinned reservation artifact. The release updater replaces these three fields
  # from PyPI and removes the disable line after verifying the real CLI wheel.
  url "https://files.pythonhosted.org/packages/1d/6e/1043d8af11f8a9b8fb5b75d7afbca1f315a6943888a273619f1972b4e2b2/songe-0.1.0a2-py3-none-any.whl", using: :nounzip
  version "0.1.0a2"
  sha256 "7c58e53dbca47b27ec010bf955f122f968a4a15051c8f5e50c679a481044166e"


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
