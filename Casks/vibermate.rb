cask "vibermate" do
  version "0.1.28"
  sha256 "64f8817dd32c2d66e37adf574e28333390200effe8e326d04f945b2af2c4de34"

  url "https://github.com/vibe-agi/vibermate/releases/download/v#{version}/ViberMate_#{version}_universal.dmg"
  name "ViberMate"
  desc "Inspect and control Claude Code and Codex traffic"
  homepage "https://github.com/vibe-agi/vibermate"

  depends_on macos: :sonoma

  app "ViberMate.app"

  uninstall quit: "io.vibermate.desktop"

  caveats <<~EOS
    Open ViberMate, then use Settings → Access & launch → Terminal command to make the
    `vibermate` command available in Terminal.

    Homebrew removes the app but preserves ViberMate settings and runtime data.
  EOS
end
