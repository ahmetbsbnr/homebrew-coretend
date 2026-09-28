cask "coretend" do
  version "2.0.0"
  sha256 "3fd2548cf988fdecc0749f0c170764cccaf3541aa02c840c4e5c58adafcfefef"

  url "https://github.com/ahmetbsbnr/coretend/releases/download/v#{version}/CoreTend-#{version}-arm64.zip",
      verified: "github.com/ahmetbsbnr/coretend/"
  name "CoreTend"
  desc "Living, local greenhouse: see what takes space, prune only to the Trash"
  homepage "https://coretend.ahmetbsbnr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CoreTend.app"

  zap trash: [
    "~/Library/Application Support/CoreTend-Reconstruction",
    "~/Library/Preferences/com.ahmetbsbnr.coretend.plist",
  ]
end
