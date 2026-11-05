cask "thoughts" do
  version "1.5"
  sha256 "7f43e8d6376bd838f5a133e65a2090fe9f4ecff54de0803db3a5eeef2701455f"

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
