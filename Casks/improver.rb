cask "improver" do
  version "3.5.0"
  sha256 "72b2fdfa79fba445533b2f6f9436c92314616059973a0ad219fd62b86e883d7e"

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
