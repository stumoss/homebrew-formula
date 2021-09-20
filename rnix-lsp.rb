class RnixLsp < Formula
  desc ""
  homepage "https://github.com/nix-community/rnix-lsp"
  url "https://github.com/nix-community/rnix-lsp/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ac820436f639862fa91d9a919028836e754d2d322945fcb8c6e21021a504b850"

  head "https://github.com/nix-community/rnix-lsp.git", :branch => "master"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/rnix-lsp"
  end

  test do
    system bin/"rnix-lsp --help"
  end
end
