require "language/node"

class DockerfileLanguageServerNodejs < Formula
  desc "A language server for Dockerfiles powered by NodeJS, TypeScript, and VSCode technologies"
  homepage "https://github.com/rcjsuen/dockerfile-language-server-nodejs#readme"
  url "https://registry.npmjs.org/dockerfile-language-server-nodejs/-/dockerfile-language-server-nodejs-0.5.0.tgz"
  sha256 "ef9f1d0505cc584b6de657bcdb1c90c7ea5027ccc2eb1d8d4a77ee1ff3b545cb"
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
