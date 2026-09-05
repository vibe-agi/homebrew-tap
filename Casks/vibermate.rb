cask "vibermate" do
  version "0.1.2"
  sha256 "eb5473f0f8c3b37bc339b08aec127f71502f86d3d4bde9091f9fac5886833b38"

  url "https://github.com/vibe-agi/vibermate/releases/download/v#{version}/ViberMate_#{version}_universal.dmg"
  name "ViberMate"
  desc "Inspect and control Claude Code and Codex traffic"
  homepage "https://github.com/vibe-agi/vibermate"

  depends_on macos: :sonoma

  app "ViberMate.app"

  uninstall quit: "io.vibermate.desktop"

  caveats <<~EOS
    Open ViberMate, then use Settings → General → Terminal command to make the
    `vibermate` command available in Terminal.

    Homebrew removes the app but preserves ViberMate settings and runtime data.
  EOS
end
