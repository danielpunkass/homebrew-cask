cask "shortery" do
  version "1.0,3"
  sha256 :no_check

  url "https://lgerckens.de/shortery/Shortery.zip"
  name "Shortery"
  desc "Shortcut automation"
  homepage "https://lgerckens.de/shortery"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :monterey"

  app "Shortery.app"

  uninstall quit:       "com.shortery-app.Shortery",
            login_item: "Shortery"

  zap trash: [
    "~/Library/Application Support/com.shortery-app.Shortery",
    "~/Library/Preferences/com.shortery-app.Shortery.plist",
    "~/Library/Saved Application State/com.shortery-app.Shortery.savedState",
  ]
end
