cask "lichess-desk" do
  version "1.0.3"
  sha256 "f1e3afdcf8fd3ac402630570c9153e94ca91867af33a55bedb841ecf17a557ec"

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
end
