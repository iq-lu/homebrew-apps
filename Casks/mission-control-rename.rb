cask "mission-control-rename" do
  version "1.0.8"
  sha256 "125bf00c318c96ca626f1f5b3a07fd7713df8858f44f96b360ca9261e9fdecdc"

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
