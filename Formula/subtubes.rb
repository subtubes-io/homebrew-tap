class Subtubes < Formula
  desc "CLI for Subtubes code and algorithm archives"
  homepage "https://subtubes.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-darwin-arm64.zip"
      sha256 "8377858a30880154c9c61934e7b85437df6007cc50f95c495e5ba428df006fca"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-darwin-amd64.zip"
      sha256 "337862254551a094b0530e60a89552b05351d8dfbb9c0f6260e0a1d94bb3d58f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-linux-arm64.zip"
      sha256 "3430034aff6bc521ee40c173c2fcb2619a0f91b3567e5417fdb7fcfcccb30954"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.0/subtubes-linux-amd64.zip"
      sha256 "84370703c827dddc236c07dc9dedfc444db265dda903be1737024e294c2e0fdf"
    end
  end

  def install
    bin.install "subtubes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subtubes version")
  end
end
