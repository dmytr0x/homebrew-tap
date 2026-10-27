cask "improver" do
  version "3.5.2"
  sha256 "9e568be5248c0c54dc8f4da4b3b819333f2f919050c303baa814cfb6349fe54f"

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
