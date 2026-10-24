cask "improver" do
  version "3.4.1"
  sha256 "163e0b9ac76eababee5293b291e30d703de813277da3d160dbaa344cb8e87447"

  url "https://github.com/dmytr0x/homebrew-tap/releases/download/v#{version}/Improver_#{version}_aarch64.dmg"
  name "Improver"
  desc "AI-powered text improvement tool"
  homepage "https://github.com/dmytr0x/homebrew-tap"

  auto_updates true
  depends_on arch: :arm64
  # The bundle's macOS 11 minimum matches the first Apple Silicon macOS release.
  depends_on :macos

  app "Improver.app"
end
