cask "coretend" do
  version "2.3.0"
  sha256 "2f22bb603ce49c06369c4dc9ab05a8b4e44781e1b90e16e27fb00cef8b88fdb5"

  url "https://github.com/ahmetbsbnr/coretend/releases/download/v#{version}/CoreTend-#{version}-universal.zip"
  name "CoreTend"
  desc "See what fills the disk and clear it safely, to the Trash"
  homepage "https://coretend.ahmetbsbnr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "CoreTend.app"
  binary "#{appdir}/CoreTend.app/Contents/Helpers/coretend"

  uninstall launchctl: "com.ahmetbsbnr.coretend.helper"

  zap trash: [
    "~/Library/Application Support/CoreTend-Reconstruction",
    "~/Library/Caches/com.ahmetbsbnr.coretend",
    "~/Library/Group Containers/NSCUV5G738.com.ahmetbsbnr.coretend",
    "~/Library/HTTPStorages/com.ahmetbsbnr.coretend",
    "~/Library/Preferences/com.ahmetbsbnr.coretend.plist",
  ]
end
