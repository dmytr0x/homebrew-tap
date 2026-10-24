cask "improver" do
  version "3.3.1"
  sha256 "e3e52659b79bcf07feb9dc48be74b1844f4ed3e48ca8ac8a9b7635267af9b8a8"

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
