class Webdown < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for converting web pages to clean, readable Markdown format"
  homepage "https://github.com/kelp/webdown"
  url "https://files.pythonhosted.org/packages/source/w/webdown/webdown-0.6.3.tar.gz"
  sha256 "9b11b36ebc19ea160b7418f4102483085bd4d092f8e3e99332872b6511a1e72b"
  license "MIT"

  depends_on "python@3.13"

  def install
    # Create a virtualenv with Python 3
    venv = virtualenv_create(libexec, "python3.13")
    
    # Install with pip directly
    system libexec/"bin/pip", "install", "--verbose", "--no-deps", "--no-binary", ":all:", 
           "--ignore-installed", buildpath
    
    # Install all dependencies
    system libexec/"bin/pip", "install", "beautifulsoup4", "html2text", "requests", "tqdm"
    
    # Create the symlink to the binary
    bin.install_symlink libexec/"bin/webdown"
  end

  test do
    system "#{bin}/webdown", "--version"
  end
end