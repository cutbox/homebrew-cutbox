cask "cutbox" do
  version "1.4.20"
  sha256 "d6a5ead1bf800e87d402410a399ac492e21a19ade95005cfe8a7f2384694e85e"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"

  def caveats
    <<~EOD
      *** IMPORTANT ***

      Before running CutBox!

      Open System Preferences > Security & Privacy > Privacy

      Add CutBox to both:  "Accessibility" and "Input Monitoring".

      This is so it can trigger a paste action.

      After you've added CutBox to these lists,
      you can start CutBox and enjoy.
    EOD
  end
end
