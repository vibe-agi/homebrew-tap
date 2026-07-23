class S3disk < Formula
  desc "Share local workspaces read-only through S3-compatible storage"
  homepage "https://github.com/vibe-agi/s3disk"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.4/s3disk-v0.1.0-rc.4-darwin-arm64.tar.gz"
      sha256 "9c821c31136279ff399495d446c54a67182a77be92dea0be65377795191d15c4"
    end
    on_intel do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.4/s3disk-v0.1.0-rc.4-darwin-amd64.tar.gz"
      sha256 "56eb9804b344d6783c56ab454431391e99cbaa909ee77bd61ee4a0ca91c847ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.4/s3disk-v0.1.0-rc.4-linux-arm64.tar.gz"
      sha256 "5097e254db8fa4ad0612b69c9fac7e823f7d8c9bfe0f29a12d71d6ad5420e141"
    end
    on_intel do
      url "https://github.com/vibe-agi/s3disk/releases/download/v0.1.0-rc.4/s3disk-v0.1.0-rc.4-linux-amd64.tar.gz"
      sha256 "f1d53a1f26c93614697e8e12fc63ea21d83163937b06a7f179e533dfd36f578b"
    end
  end

  def install
    bin.install "s3disk"
  end

  test do
    assert_match "s3disk version v#{version}", shell_output("#{bin}/s3disk --version")
  end
end
