cask "mission-control-rename" do
  version "1.2.0"
  sha256 "94b2ffab4076e83e2e5a61f3540666b9667c636724471b56f8b3f81229f2f85c"

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
