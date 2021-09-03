require "language/node"

class VscodeLangserversExtracted < Formula
  desc "HTML/CSS/JSON language servers extracted from [vscode](https://github.com/Microsoft/vscode)"
  homepage "https://github.com/hrsh7th/vscode-langservers-extracted#readme"
  url "https://registry.npmjs.org/vscode-langservers-extracted/-/vscode-langservers-extracted-2.4.0.tgz"
  sha256 "7b2033734f26ba7abb017d31bc3208d2f446b5d324fd5663e716ba7ce82ba3c3"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
  end
end
