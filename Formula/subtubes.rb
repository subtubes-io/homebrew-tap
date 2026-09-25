class Subtubes < Formula
  desc "CLI for Subtubes code and algorithm archives"
  homepage "https://subtubes.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-darwin-arm64.zip"
      sha256 "78318284d033316e3c5d3698587e68fb5bb5c018a63454991adc003b3684c36e"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-darwin-amd64.zip"
      sha256 "9bc670d771326f0a78317860fb7a8de41b6fdc2aba7b1a5db8c65ebd6bbd08ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-linux-arm64.zip"
      sha256 "b6f9722b7c4f1e53f1f3788a1f4aac5b7f364f1b40a2bd1f56b59211f41854bc"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-linux-amd64.zip"
      sha256 "50540fca9253306715a092994810d089234586077e80eb13158342cbc52e33f2"
    end
  end

  def install
    bin.install "subtubes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subtubes version")
  end
end
