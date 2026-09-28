cask "vibermate" do
  version "0.1.16"
  sha256 "505256cd0b7c3d06de4a44ead2b6faf64ee96c2f4bc2ee8e00bb575788cd5e5c"

  url "https://github.com/vibe-agi/vibermate/releases/download/v#{version}/ViberMate_#{version}_universal.dmg"
  name "ViberMate"
  desc "Inspect and control Claude Code and Codex traffic"
  homepage "https://github.com/vibe-agi/vibermate"

  depends_on macos: :sonoma

  app "ViberMate.app"

  uninstall quit: "io.vibermate.desktop"

  caveats <<~EOS
    Upgrading from 0.1.15? Stop ViberMate and its managed Agents, then back up and
    convert existing data before opening the new app. See:
      https://github.com/vibe-agi/vibermate/tree/v0.1.16/tool/convert-v1

    Open ViberMate, then use Settings → Access & launch → Terminal command to make the
    `vibermate` command available in Terminal.

    Homebrew removes the app but preserves ViberMate settings and runtime data.
  EOS
end
