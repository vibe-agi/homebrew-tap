cask "vibermate" do
  version "0.1.8"
  sha256 "ccc01e60aedbac72204933baf26ea02633be2540e83c51e6d5f8a127fa3efe90"

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
