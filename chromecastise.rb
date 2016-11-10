class Chromecastise < Formula
  desc ""
  homepage "https://github.com/stumoss/chromecastise"
  url "https://github.com/stumoss/chromecastise/archive/1.0.0.tar.gz"
  sha256 "aa6b376db39bbc9f89f6c128fe836ded16847c0a74ef586fa908e607762371e8"

  head "https://github.com/stumoss/chromecastise.git", :branch => "develop"

  depends_on "rust" => :build
  depends_on "ffmpeg" => [:run, "with-fdk-aac", "with-sdl2", "with-libass", "with-libvorbis", "with-libvpx", "with-opus", "with-x265"]
  depends_on "ffmpeg" => :run
  depends_on "media-info" => :run

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/chromecastise"
  end

  test do
    system bin/"chromecastise --help"
  end
end
