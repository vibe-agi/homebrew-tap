cask "vibermate" do
  version "0.1.1"
  sha256 "bbbc0fb2c5a7ee146141c7abc475e6d691d0b72e6bd12b207a84acc032ca4e24"

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
