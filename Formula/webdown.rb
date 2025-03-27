class Webdown < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for converting web pages to clean, readable Markdown format"
  homepage "https://github.com/kelp/webdown"
  url "https://pypi.org/packages/source/w/webdown/webdown-0.6.3.tar.gz"
  sha256 "9b11b36ebc19ea160b7418f4102483085bd4d092f8e3e99332872b6511a1e72b"
  license "MIT"

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, Formula["python@3.13"].opt_bin/"python3.13")
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/webdown", "--version"
  end
end