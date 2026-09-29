cask "vibermate" do
  version "0.1.17"
  sha256 "24f036ccef2bd0a77e54f0f15959b339359ec6ca5b264aa38ff57519b9a387c4"

  url "https://github.com/vibe-agi/vibermate/releases/download/v#{version}/ViberMate_#{version}_universal.dmg"
  name "ViberMate"
  desc "Inspect and control Claude Code and Codex traffic"
  homepage "https://github.com/vibe-agi/vibermate"

  depends_on macos: :sonoma

  app "ViberMate.app"

  uninstall quit: "io.vibermate.desktop"

  caveats <<~EOS
    ViberMate 0.1.17 cannot open data created by 0.1.16 or earlier. Before the
    first launch, quit ViberMate and move
      ~/Library/Application Support/io.vibermate.desktop
    somewhere else to keep it; 0.1.17 then starts with empty data.

    Open ViberMate, then use Settings → Access & launch → Terminal command to make the
    `vibermate` command available in Terminal.

    Homebrew removes the app but preserves ViberMate settings and runtime data.
  EOS
end
