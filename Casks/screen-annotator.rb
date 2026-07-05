cask "screen-annotator" do
  version "1.0.0"
  sha256 "d6be871ae7a19483b994da2dd32fdbf5bcc63446cda0e0d4bfd458c300195474"

  url "https://github.com/nfunky/macos-screenannotator/releases/download/v1.0.0/ScreenAnnotator-1.0.0-macos.zip"
  name "Screen Annotator"
  desc "Lightweight macOS menu bar utility for drawing on top of your screen"
  homepage "https://github.com/nfunky/macos-screenannotator"

  depends_on macos: :ventura

  app "ScreenAnnotator.app"

  caveats <<~EOS
    Screen Annotator is not notarized. On first launch, right-click the app
    and choose Open, or remove quarantine with:
      xattr -cr /Applications/ScreenAnnotator.app

    Accessibility permission is required for the global shortcut (Control+Option+A).
  EOS
end
