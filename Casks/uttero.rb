cask "uttero" do
  version "0.1.13"
  sha256 "402a41a0d56d9b8a9353521f9a0a156b746fa5cf5e225d4bacf94cdb9f4f3bf6"

  url "https://github.com/barockok/uttero/raw/main/uttero-#{version}.dmg"
  name "uttero"
  desc "Menu bar app for talking to every Claude Code session by voice or text"
  homepage "https://uttero.dev/"

  livecheck do
    url "https://raw.githubusercontent.com/barockok/uttero/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "uttero.app"

  zap trash: [
    "~/.uttero-osx",
    "~/Library/Caches/dev.uttero.app",
    "~/Library/HTTPStorages/dev.uttero.app",
    "~/Library/Logs/uttero",
    "~/Library/Preferences/dev.uttero.app.plist",
  ]
end
