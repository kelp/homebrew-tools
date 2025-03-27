class Webdown < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for converting web pages to clean, readable Markdown format"
  homepage "https://github.com/kelp/webdown"
  url "https://pypi.org/packages/source/w/webdown/webdown-0.6.3.tar.gz"
  sha256 "9b11b36ebc19ea160b7418f4102483085bd4d092f8e3e99332872b6511a1e72b"
  license "MIT"

  depends_on "python@3.13"

  depends_on "python-certifi"
  depends_on "python-charset-normalizer"
  depends_on "python-idna"
  depends_on "python-urllib3"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/06/85/ab8a1dd7abd7e9e53fae56ff5ce7ff5286c515712fdff0b87a65ce3fa74d/beautifulsoup4-4.13.3-py3-none-any.whl"
    sha256 "492bbc69dca35d12daac71c4db1bfff0c876c00ef4a2ffacce226d4638eb72da"
  end

  resource "html2text" do
    url "https://files.pythonhosted.org/packages/e1/4e/5a3d8e2867e1b79430c61113e84afbc09c1ad0aaa63fb8a6115a1be9f3ba/html2text-2024.2.26.tar.gz"
    sha256 "05f8e367d15aaabc96415376776cdd11afd5127a77fce6e36afc60c563ca2c32"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/b7/06d436daa2c70dac8c6fd388c7e0bbf30a4c06ebb256d0d3c047d01beaae/requests-2.32.3-py3-none-any.whl"
    sha256 "ca11d673c481579858a3ec1ac1ba0eccf654b754e7ad36f3095bbd04cc5c5ac5"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/cc/bc/7c12ac38c0624a1a487a7d7c21fb51e118d3322f0c799438a5ccc1c72058/soupsieve-2.5-py3-none-any.whl"
    sha256 "a714147a5d9bb7a9fe5c16a66a2805dd5ebc58aab3fb268587c51f36531f4325"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/37/af/3128bf77d1a433c70b5c9ebcbb3c31b3cd8013b882ca88575951c5b098d3/tqdm-4.67.1-py3-none-any.whl"
    sha256 "d302b3c5b53d47bce91fea46679d9c3c6508cf6332229aa1e7d8653723793386"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/28/53/26205c1a9c153c5995b81d12fce2e541a265526f77f9dca969bae3923a5f/typing_extensions-4.13.0-py3-none-any.whl"
    sha256 "0b0b4a94e4d11d3a2bb2704e9d21c67f040d017facefb0f2122585550b2abd6d"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/webdown", "--version"
  end
end