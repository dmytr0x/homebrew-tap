cask "improver" do
  version "3.5.1"
  sha256 "d39ef7eaaf6b8b5e166bf4941094ccea98f8038d57a6fb9652208066a41c3967"

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
