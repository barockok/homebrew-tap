cask "uttero" do
  version "0.1.11"
  sha256 "304de6c3343c57d9b85fb3ff3debd94f6cff165dd41d0415646b060da36d301d"

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
