cask "mission-control-rename" do
  version "1.1.0"
  sha256 "d97e618134b2c9c649577a82c194db5676ebceb662d4a2a2024dd92024b15041"

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
