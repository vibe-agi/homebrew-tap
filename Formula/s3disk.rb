class S3disk < Formula
  desc "Share local workspaces read-only through S3-compatible storage"
  homepage "https://github.com/vibe-agi/s3disk"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.2/s3disk-v0.1.0-rc.2-darwin-arm64.tar.gz"
      sha256 "93d02484d63c4a53a1978e35442a24ac510e26d9b71f4fc260452eea548d4a22"
    end
    on_intel do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.2/s3disk-v0.1.0-rc.2-darwin-amd64.tar.gz"
      sha256 "6cefe27ca77ad07c1229f5431a8c872837f94f75969d3d84e1e159044267feef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.2/s3disk-v0.1.0-rc.2-linux-arm64.tar.gz"
      sha256 "1f25d5a62d09ab3775b1c8510ce3a58b7727a0b3f8f40c4f29e6b83f55a98453"
    end
    on_intel do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.2/s3disk-v0.1.0-rc.2-linux-amd64.tar.gz"
      sha256 "63f4595233e4a38ad1dc4f4aefa854b4d0f25327904bc9b554075a97741476c1"
    end
  end

  def install
    bin.install "s3disk"
  end

  test do
    assert_match "s3disk version v#{version}", shell_output("#{bin}/s3disk --version")
  end
end
