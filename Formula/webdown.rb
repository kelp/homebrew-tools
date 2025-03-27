class Webdown < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for converting web pages to clean, readable Markdown format"
  homepage "https://github.com/kelp/webdown"
  url "https://files.pythonhosted.org/packages/source/w/webdown/webdown-0.6.3.tar.gz"
  sha256 "9b11b36ebc19ea160b7418f4102483085bd4d092f8e3e99332872b6511a1e72b"
  license "MIT"

  depends_on "python"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/06/85/ab8a1dd7abd7e9e53fae56ff5ce7ff5286c515712fdff0b87a65ce3fa74d/beautifulsoup4-4.13.3-py3-none-any.whl"
    sha256 "99045d7d3f08f91f0d656bc9b7efbae189426cd913d830294a15eefa0ea4df16"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ba/06/a07f096c664aeb9f01624f858c3add0a4e913d6c96257acb4fce61e7de14/certifi-2024.2.2-py3-none-any.whl"
    sha256 "dc383c07b76109f368f6106eee2b593b04a011ea4d55f652c6ca24a754d1cdd1"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset_normalizer-3.3.2-py3-none-any.whl"
    sha256 "3e4d1f6587322d2788836a99c69062fbb091331ec940e02d12d179c1d53e25fc"
  end

  resource "html2text" do
    url "https://files.pythonhosted.org/packages/e1/4e/5a3d8e2867e1b79430c61113e84afbc09c1ad0aaa63fb8a6115a1be9f3ba/html2text-2024.2.26.tar.gz"
    sha256 "05f8e367d15aaabc96415376776cdd11afd5127a77fce6e36afc60c563ca2c32"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/c2/e7/a82b05cf63a603df6e68d59ae6a68bf5064484a0718ea5033660af4b54a9/idna-3.6-py3-none-any.whl"
    sha256 "c05567e9c24a6b9faaa835c4821bad0590fbb9d5779e7caa6e1cc4978e7eb24f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/70/8e/0e2d742e3b8d4d9c5baaa804ca36b39791853aa5f069dad4de9622b80e4d/requests-2.32.3-py3-none-any.whl"
    sha256 "70761cfe03c773ceb22aa2f671b4757976145175cdfca038c02654d061d6dcc6"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/4c/f3/038b302fdfbe3be7da016777069f26ceefe11a681055ea1f7817546508e3/soupsieve-2.5-py3-none-any.whl"
    sha256 "eaa337ff55a1579b6549dc679565eac1e3d000563bcb1c8ab0d0fefbc0c2cdc5"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/ch/25/1eb483582ce41eac7223704ec9f1ef5e1fbdff932ba9611aab0413686bee/tqdm-4.67.1-py3-none-any.whl"
    sha256 "26445eca388f82e72884e0d580d5464cd801a3ea01e63e5601bdff9ba6a48de2"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/c7/d0/f9f295461e7a534b7d526bd102ac2ff247adad291e1d1b3fbbdd268d9a27/typing_extensions-4.13.0-py3-none-any.whl"
    sha256 "c8dd92cc0d6425a97c18fbb9d1954e5ff92c1ca881a309c45f06ebc0b79058e5"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/96/94/c31f58c7a7f470d5665935551c5784759388775c1610b04024f4580b5ac1/urllib3-1.26.18-py2.py3-none-any.whl"
    sha256 "34b97092d7e0a3a8cf7cd10e386f401b3737364026c45e622aa02903dffe0f07"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"webdown", "--version"
  end
end