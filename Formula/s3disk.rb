class S3disk < Formula
  desc "Share local workspaces read-only through S3-compatible storage"
  homepage "https://github.com/vibe-agi/s3disk"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.3/s3disk-v0.1.0-rc.3-darwin-arm64.tar.gz"
      sha256 "802ed30c71dc4f9b851b53671c548b3c3ed96977d07707665a9c9ef090d699e1"
    end
    on_intel do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.3/s3disk-v0.1.0-rc.3-darwin-amd64.tar.gz"
      sha256 "fd6381c93e8a1006c2c33a855054b096f6e9c44c649ade8b09d2fbcfccb84834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.3/s3disk-v0.1.0-rc.3-linux-arm64.tar.gz"
      sha256 "2abc7154263c786553bc5400eb0a7bc0b7829f4f0634460331e9c26e2557d95e"
    end
    on_intel do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.3/s3disk-v0.1.0-rc.3-linux-amd64.tar.gz"
      sha256 "3e9e81e87a919399baf0d635c4a0bf6d71ebedcd7311d7909ce28d9332111d34"
    end
  end

  def install
    bin.install "s3disk"
  end

  test do
    assert_match "s3disk version v#{version}", shell_output("#{bin}/s3disk --version")
  end
end
