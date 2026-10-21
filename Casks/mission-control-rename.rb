cask "mission-control-rename" do
  version "1.2.2"
  sha256 "b83be9f53211b0a56580029aa18349b59c11ab92bfc92870e77ed3ae6e7d612e"

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
