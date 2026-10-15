cask "thoughts" do
  version "1.4"
  sha256 "198ac2cbffc79203f39608500dfdf2e1c3b88ad2866702121f1e76c671c68e97"

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
