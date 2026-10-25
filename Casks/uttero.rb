cask "uttero" do
  version "0.1.12"
  sha256 "5adcb2da75fe24c666c3d17ef628645c9fbbdf9514e3ccd51c11995201b2b103"

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
