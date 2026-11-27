cask "lichess-desk" do
  version "1.0.4"
  sha256 "ddcea8fc7c1de8495f04a01d4b3d15d9e80e0eb6f0f81f23f7ed88566ce4de95"

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
