class Chromecastise < Formula
  desc ""
  homepage "https://github.com/stumoss/chromecastise"
  url "https://github.com/stumoss/chromecastise/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "aa6b376db39bbc9f89f6c128fe836ded16847c0a74ef586fa908e607762371e8"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/chromecastise"
  end

  test do
    system bin/"chromecastise --help"
  end
end
