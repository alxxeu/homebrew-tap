cask "thoughts" do
  version "1.5"
  sha256 "0987bfbb886303842a72b98d1fd90ed4b5bf3dcc15489c90f53aa3d8883ccb95"

  url "https://github.com/alxxeu/Thoughts/releases/download/v#{version}/Thoughts-#{version}.dmg"
  name "Thoughts"
  desc "Free-form canvas for scattered ideas"
  homepage "https://github.com/alxxeu/Thoughts"

  livecheck do
    url "https://github.com/alxxeu/Thoughts/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Thoughts.app"

  zap trash: [
    "~/Library/Application Scripts/com.alxeu.Thoughts",
    "~/Library/Containers/com.alxeu.Thoughts",
  ]
end
