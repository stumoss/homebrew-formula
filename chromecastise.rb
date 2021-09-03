class Chromecastise < Formula
  desc ""
  homepage "https://github.com/stumoss/chromecastise"
  url "https://github.com/stumoss/chromecastise/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "1875dda04b966d79b0433b77a7b88d330c4d63a35f91a00b8f7b59beec3d4905"

  head "https://github.com/stumoss/chromecastise.git", :branch => "develop"

  depends_on "rust" => :build
  depends_on "ffmpeg" => [:run, "with-fdk-aac", "with-sdl2", "with-libass", "with-libvorbis", "with-libvpx", "with-opus", "with-x265"]
  depends_on "media-info" => :run

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/chromecastise"
  end

  test do
    system bin/"chromecastise --help"
  end
end
