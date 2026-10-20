cask "thoughts" do
  version "1.4.2"
  sha256 "534900a67a8fab6c4733de2c9857fb7c4aa6ae85326674915f06339e8e77f5df"

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
