cask "thoughts" do
  version "1.5"
  sha256 "e8272aaf8ef97169663bc0c22bd22cb329ff7abfa919d270a2fc36b42b813890"

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
