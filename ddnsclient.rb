class Ddnsclient < Formula
  desc "Update Dynamic DNS records"
  homepage "https://github.com/stumoss/ddnsclient"
  url "https://github.com/stumoss/ddnsclient/archive/1.0.1.tar.gz"
  sha256 "3620495560a717410882d1804b94d49d6c5f493ea97f35e99a885a817af264b6"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/ddnsclient"
  end

  test do
    system bin/"ddnsclient --help"
  end
end
