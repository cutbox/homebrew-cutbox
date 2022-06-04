cask "cutbox" do
  version "1.4.19"
  sha256 "a81cf50af26858b449806daced9eaf7860c1a1fb4766272d9ab1fa1c"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"
end
