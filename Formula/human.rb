class Human < Formula
  desc "Use a human as an OpenAI/Anthropic-compatible model endpoint"
  homepage "https://github.com/vibe-agi/human"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vibe-agi/human/releases/download/v0.1.0/human_0.1.0_darwin_arm64.tar.gz"
      sha256 "52c7818efb3d7d9ba1b38bd088036ebc443ec7b3e0ed14e5d88df8b8d773a8bf"
    end
    on_intel do
      url "https://github.com/vibe-agi/human/releases/download/v0.1.0/human_0.1.0_darwin_amd64.tar.gz"
      sha256 "44fc21b569fcd1fbac612a33ecb999216dd363922dec41ecf1c0f39b471e5d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vibe-agi/human/releases/download/v0.1.0/human_0.1.0_linux_arm64.tar.gz"
      sha256 "6cb34235765dadd399aadb5acccc6203d479e512af2c904f3e3e9d6f266da8d5"
    end
    on_intel do
      url "https://github.com/vibe-agi/human/releases/download/v0.1.0/human_0.1.0_linux_amd64.tar.gz"
      sha256 "5d5a2afea5dbdcdf3ee593df0b7bc395a63a5cb6733c76248beb8b79b9b7ee78"
    end
  end

  def install
    bin.install "human"
  end

  test do
    output = shell_output("#{bin}/human version --json")
    assert_match "\"version\":\"#{version}\"", output
    assert_match "\"os\":\"#{OS.mac? ? "darwin" : "linux"}\"", output
  end
end
