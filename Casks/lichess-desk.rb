cask "lichess-desk" do
  version "1.0.0"
  sha256 "fb71f524f1477ef2aafa7cb87da90383a226e4013d741282a5ca6fbd3e10072c"

  url "https://github.com/tdiethe/homebrew-tap/releases/download/lichess-desk-v#{version}/Lichess-Desk-#{version}.zip"
  name "Lichess Desk"
  desc "Unofficial lichess.org app made for streaming, with clock tint and auto-queen"
  homepage "https://github.com/tdiethe/Chess-Stuff"

  depends_on macos: :ventura

  app "Lichess Desk.app"

  zap trash: [
    "~/Library/Caches/local.hrstreamer.lichessdesk",
    "~/Library/HTTPStorages/local.hrstreamer.lichessdesk",
    "~/Library/Preferences/local.hrstreamer.lichessdesk.plist",
    "~/Library/Saved Application State/local.hrstreamer.lichessdesk.savedState",
    "~/Library/WebKit/local.hrstreamer.lichessdesk",
  ]

  caveats <<~EOS
    Lichess Desk isn't signed with an Apple Developer ID, so macOS blocks the first launch.
    Either open it once, then allow it in System Settings > Privacy & Security > Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/Lichess Desk.app"
  EOS
end
