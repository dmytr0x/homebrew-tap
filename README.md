# dmytr0x Homebrew tap

Public distribution repository for Improver, an AI-powered text improvement
application for Apple Silicon Macs. Requires macOS 11 (Big Sur) or later.

This repository contains the Homebrew cask and public releases. Each release
includes a DMG installer, a signed updater archive, its signature, and
`latest.json`. Application source and builds are maintained separately.

## Install

With a current Homebrew installation:

```sh
brew install --cask dmytr0x/tap/improver
```

The fully qualified name trusts this cask. Alternatively, tap and trust the
repository before installing by its short name:

```sh
brew tap dmytr0x/tap
brew trust --tap dmytr0x/tap
brew install --cask improver
```

If the tap was added before the cask was published, run `brew update` first.

If a manually installed `/Applications/Improver.app` already exists, quit
Improver and move that application bundle to a backup location before installing
with Homebrew. Keep your application data. Homebrew will otherwise report an
existing application conflict; do not use a forced installation to replace it.

### First launch

The current 3.3.1 release is ad-hoc signed and is not notarized by Apple.
Homebrew preserves the normal macOS quarantine checks. After attempting to open
Improver, use **System Settings > Privacy & Security > Open Anyway** if macOS
blocks it, then confirm **Open**. Approve the app only if you intended to install
this release. See [Apple's instructions](https://support.apple.com/en-us/102445).

## Updates

```sh
brew update
brew upgrade --cask improver
```

A Homebrew upgrade becomes available after this tap's cask version and checksum
have been updated on `main`. Publishing a GitHub Release alone does not change
the cask. Cask bumps are maintained manually until release synchronization is
configured.

Improver can also check for updates and download them according to its settings.
Use **Check for Updates** for a manual check, then **Install and restart** when an
update is ready. Save your work before installing. The app uses this tap's public
release feed and verifies updater signatures; it does not run or require
Homebrew. Updates require write access to the installed application bundle. If
installation fails, use the app's retry or manual-install guidance; this cask
does not install a privileged helper.

`auto_updates true` describes the app's own updater. It does not install a
system-wide scheduled updater. A general `brew upgrade` may skip self-updating
casks; the explicitly named upgrade above remains available. After an in-app
update, Homebrew's installation record may still show the version it originally
installed, and an explicitly named upgrade may reinstall the current version.
Inspect the state on your Homebrew version with:

```sh
brew info --cask improver
brew outdated --cask --greedy improver
```

## Uninstall

```sh
brew uninstall --cask improver
```

Ordinary uninstall removes the application and its Homebrew installation record.
It preserves settings, saved items, decks, and journals. This cask contains no
`zap` stanza or application-data removal scripts.

## Maintaining the cask

Use a published stable release from this repository that contains a working
updater. Download its versioned Apple Silicon DMG without credentials and compute
its checksum:

```sh
curl --fail --location --proto '=https' --proto-redir '=https' \
  --output Improver_3.3.1_aarch64.dmg \
  https://github.com/dmytr0x/homebrew-tap/releases/download/v3.3.1/Improver_3.3.1_aarch64.dmg
shasum -a 256 Improver_3.3.1_aarch64.dmg
```

Substitute the actual new release version in both the filename and URL. Update
`version` and `sha256` in `Casks/improver.rb`, preserving the versioned URL,
architecture restriction, app artifact, and `auto_updates true`. Check the
downloaded bundle's version and minimum macOS version before publishing a bump.
Do not replace an existing release's assets.

Run these checks against the updated local tap:

```sh
brew style --cask dmytr0x/tap/improver
brew audit --cask --online dmytr0x/tap/improver
```

Qualify fresh installation, an in-app update, and a Homebrew upgrade between two
real increasing releases in a disposable environment. Also test an already
self-updated installation and ordinary uninstall with retained user data.
Keep the owner's working installation intact during testing.
