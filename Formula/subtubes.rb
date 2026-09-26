class Subtubes < Formula
  desc "CLI for Subtubes code and algorithm archives"
  homepage "https://subtubes.com"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.1/subtubes-darwin-arm64.zip"
      sha256 "efb75b39265eba829e1c2bde2fe60db2fc6366eb26132548e579188e7795a2c7"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.1/subtubes-darwin-amd64.zip"
      sha256 "77ff9577972a2fb96541c2962a65ec8b205cbc3eb5f4fddbd53ed972df5ced47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.1/subtubes-linux-arm64.zip"
      sha256 "dad049309df95fe04a6bc5368bc167ce2a5d6feafa59554028e378e107d0c3c1"
    else
      url "https://github.com/subtubes-io/subtubes-cli-releases/releases/download/v0.1.1/subtubes-linux-amd64.zip"
      sha256 "138ac10c84c529accf703de9c84c05c5e1ab353bf7f6d2c039d4dccdc729a57f"
    end
  end

  def install
    bin.install "subtubes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subtubes version")
  end
end
