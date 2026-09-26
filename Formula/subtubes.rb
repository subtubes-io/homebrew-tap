class Subtubes < Formula
  desc "CLI for Subtubes code and algorithm archives"
  homepage "https://subtubes.com"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.3/subtubes-darwin-arm64.zip"
      sha256 "56f13ef53c9ef0d10875088eea612579b5cb229e12ca573056f5b731988701ce"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.3/subtubes-darwin-amd64.zip"
      sha256 "c920a6a92d27cc6f9048192aafefa2d4d2a1dd626776ace0beaf422b46b5a987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.3/subtubes-linux-arm64.zip"
      sha256 "c83270769e6c7a7ffc870bd0255af30703aabe33d159265a4d0a0a814f0c32c6"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.3/subtubes-linux-amd64.zip"
      sha256 "4b92c54034abb6d6b617c0daf2a46ff3f5422b8d6b919bd2ba6296212490073e"
    end
  end

  def install
    bin.install "subtubes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subtubes version")
  end
end
