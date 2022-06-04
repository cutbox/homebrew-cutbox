class Cutbox < Formula
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"
  version "1.4.19"
  url "https://github.com/cutbox/CutBox/archive/refs/tags/#{version}.tar.gz"
  sha256 "194df197b0caafc2d93aa25d7a3034119160a3f01baf08f8b6cead5f"
  license "GPL3"

  depends_on "cocoapods"

  def install
    system "bin/build"
    prefix.install "CutBox/build/CutBox.app"
  end

  def caveats
    <<~EOS
      CutBox installed to #{prefix}/CutBox.app

      Copy the app to /Applications

      cp -R #{prefix}/CutBox.app /Applications/

      alternatively symlink the app to /Applications (note: this won't be found Spotlight)

      ln -s #{prefix}/CutBox.app /Applications/

      After copying to /Applications (before running CutBox) open

      System Preferences > Security & Privacy > Privacy

      Add and check on, CutBox to the "Accessibility" and "Input Monitoring" lists, so
      it can trigger a paste action.
    EOS
  end
end
