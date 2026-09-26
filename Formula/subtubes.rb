class Subtubes < Formula
  desc "CLI for Subtubes code and algorithm archives"
  homepage "https://subtubes.com"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.2/subtubes-darwin-arm64.zip"
      sha256 "4bd1116d9068fdce5daddac44ff9a4a996d199a7ef937068d23a0165e686bda3"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.2/subtubes-darwin-amd64.zip"
      sha256 "f6beb9f99c666584c9ac1cd8f702b762fb78a5bc18250b88701f4b9f81e65f46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.2/subtubes-linux-arm64.zip"
      sha256 "6aa9476a5cef63bcf1f5033093848e9dfee76d41655b6356250f4f60616706f8"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.2/subtubes-linux-amd64.zip"
      sha256 "77ff311882171c77b77eea401e9fb0c5a47b24ca609c41e590a30ece29f6b6ee"
    end
  end

  def install
    bin.install "subtubes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subtubes version")
  end
end
