class Subtubes < Formula
  desc "CLI for Subtubes code and algorithm archives"
  homepage "https://subtubes.com"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.5/subtubes-darwin-arm64.zip"
      sha256 "3cf48fea902d2078c8a5726aa8e1208acf87f074acf165d0f249236d05ead17c"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.5/subtubes-darwin-amd64.zip"
      sha256 "32ec83662e02f84c44cefd08b98eb3a35f8be799d26898b47324cfce26e0d904"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.5/subtubes-linux-arm64.zip"
      sha256 "3135e5bb9e777f9d3d9a20e4581ae0b188ecafd4f87033d63bae313510892730"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.5/subtubes-linux-amd64.zip"
      sha256 "5a32953a697c3339b3ee8d75f43ebd4ca760bf48d5f89f2e6cbc5031cdfb4c61"
    end
  end

  def install
    bin.install "subtubes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subtubes version")
  end
end
