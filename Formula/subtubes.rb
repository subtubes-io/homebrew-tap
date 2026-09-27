class Subtubes < Formula
  desc "CLI for Subtubes code and algorithm archives"
  homepage "https://subtubes.com"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.4/subtubes-darwin-arm64.zip"
      sha256 "671a923cbc90eeb46a1d0557e8f5f7419a68dc4f87659a176bfec21cb9d77112"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.4/subtubes-darwin-amd64.zip"
      sha256 "38ca858626cfc1075ee082f54c620b217057bcfe3f9e939fcfc5392b7bc02ba4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.4/subtubes-linux-arm64.zip"
      sha256 "b42efda01f9694b6ed5254479ef8f17d0c2da8a6f2bba1d11cb1a2b94289fdb5"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.4/subtubes-linux-amd64.zip"
      sha256 "b902305c3393470e535f2292b21dad6590d3d53f2ee63eedf973e2a90736a2f2"
    end
  end

  def install
    bin.install "subtubes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subtubes version")
  end
end
