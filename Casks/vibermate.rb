cask "vibermate" do
  version "0.1.0"
  sha256 "13fc008a8642b671f584bc286d83055f1fda192f01dcd63b7c29e2e28f2accd5"

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
