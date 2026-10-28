cask "mission-control-rename" do
  version "1.2.4"
  sha256 "2033f4ed8d6108ceaa57284445820c5819d73452a7bd0e97a0a0f0ac226c795d"

  url "https://apps.iq.lu/downloads/mission-control-rename/#{version}/Mission-Control-Rename-#{version}.dmg"
  name "Mission Control Rename"
  desc "Names Mission Control desktops so spaces stop reading as Desktop 1, 2, 3"
  homepage "https://apps.iq.lu/mission-control-rename"

  livecheck do
    url "https://apps.iq.lu/mission-control-rename/updates/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sonoma

  app "Mission Control Rename.app"

  zap trash: [
    "~/Library/Application Support/Mission Control Rename",
    "~/Library/Caches/com.missioncontrolrename.app",
    "~/Library/Preferences/com.missioncontrolrename.app.plist",
  ]
end
