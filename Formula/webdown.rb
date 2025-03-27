class Webdown < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for converting web pages to clean, readable Markdown format"
  homepage "https://github.com/kelp/webdown"
  url "https://pypi.org/packages/source/w/webdown/webdown-0.6.3.tar.gz"
  sha256 "9b11b36ebc19ea160b7418f4102483085bd4d092f8e3e99332872b6511a1e72b"
  license "MIT"

  depends_on "python@3.13"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/af/0b/44c39cf3b18a9280950ad63a579ce395dda4c32193ee9da7ff0aed547094/beautifulsoup4-4.13.3-py3-none-any.whl"
    sha256 "492bbc69dca35d12daac71c4db1bfff0c876c00ef4a2ffacce226d4638eb72da"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ba/06/a07f096c664aeb9f01624f858c3add0a4e913d6c96257acb4fce61e7de14/certifi-2024.2.2-py3-none-any.whl"
    sha256 "dc383c07b76109f368f6106eee2b593b04a011ea4d55f652c6ca24a754d1cdd1"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/b9/80/3521e1676688ea078bab57f056e65fb4d61decdd3bcf528349f8e48c51d0/charset_normalizer-3.3.2-py3-none-any.whl"
    sha256 "673d68f9a23b977fea237ffb2c2bffb16e40a8b30534b59196bf2b6d8437b9f1"
  end

  resource "html2text" do
    url "https://files.pythonhosted.org/packages/38/e2/3d00fa5c28d0b72d89c15766f525eaf45e1d9d82264fe29b4d47a93df8a5/html2text-2024.2.26-py3-none-any.whl"
    sha256 "c0ad5c4e55675871bbde8992958cd967e5932e1b652eb3d65a5be9a0eb07d780"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/c2/e7/a82b05cf63a603df6e68d59ae6a68bf5064484a0718ea5033660af4b54a9/idna-3.6-py3-none-any.whl"
    sha256 "c05567e9c24a6b9faaa835c4821bad0590fbb9d5779e7caa6e1cc4978e7eb24f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/70/8e/0e2d742e3b8d4d9c5baaa804ca36b39791853aa5f069dad4de9622b80e4d/requests-2.32.3-py3-none-any.whl"
    sha256 "ca11d673c481579858a3ec1ac1ba0eccf654b754e7ad36f3095bbd04cc5c5ac5"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/4c/f3/038b302fdfbe3be7da016777069f26ceefe11a681055ea1f7817546508e3/soupsieve-2.5-py3-none-any.whl"
    sha256 "a714147a5d9bb7a9fe5c16a66a2805dd5ebc58aab3fb268587c51f36531f4325"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/71/ce/6a2c344df42f86d2e49496ed570f92da57d9e5bd10d08791321b7583e40c/tqdm-4.66.2-py3-none-any.whl"
    sha256 "d302b3c5b53d47bce91fea46679d9c3c6508cf6332229aa1e7d8653723793386"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/0c/1d/eb26f5e75100d531d7399ae800814b069bc2ed2a7410834d57374d010d96/typing_extensions-4.9.0-py3-none-any.whl"
    sha256 "23478f88c37f27d76ac8aee6c905017a143b0b1b886c3c9f66bc2fd94f9f5783"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/96/94/c31f58c7a7f470d5665935551c5784759388775c1610b04024f4580b5ac1/urllib3-1.26.18-py2.py3-none-any.whl"
    sha256 "34b97092d7e0a3a8cf7cd10e386f401b3737364026c45e622aa02903dffe0f07"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/webdown", "--version"
  end
end