require "language/node"

class BashLanguageServer < Formula
  desc "A language server for Bash"
  homepage "https://github.com/bash-lsp/bash-language-server#readme"
  url "https://registry.npmjs.org/bash-language-server/-/bash-language-server-2.0.0.tgz"
  sha256 "6e00d79e9ae95586c567c3919ee81c6e82bb7ef106e4bfaf3c84d3a94dccb20e"
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
    raise "Test not implemented."
  end
end
