# mac-meld

Homebrew cask for the official [GNOME Meld](https://meld.app/) macOS binary.
Currently installs [Meld 3.24.1](https://gitlab.gnome.org/GNOME/meld/-/packages/1740)
for **Apple Silicon**. Includes `Meld.app` and the `meld` terminal command.

## Install this cask

If replacing the earlier source-built Meld formula, remove it first:

```sh
brew uninstall --formula meld
```

If replacing Homebrew's standard Meld cask instead, use
`brew uninstall --cask meld`. These commands keep preferences.

Add this repository with an explicit URL, then install the fully qualified cask:

```sh
brew tap michft/meld https://github.com/michft/mac-meld.git
brew install --cask michft/meld/meld
```

If Homebrew requires explicit trust, run `brew trust --cask michft/meld/meld`
and retry the install. Keep using `michft/meld/meld` to select this cask;
plain `brew install meld` may select another package.

Launch with `open -a Meld`, or compare files with `meld first.txt second.txt`.

## Update

```sh
brew update
brew upgrade --cask michft/meld/meld
```

Updates become available when this cask's version and checksum are updated.
The livecheck rule detects upstream stable release tags.

## Remove

```sh
brew uninstall --cask michft/meld/meld
brew untap michft/meld
```

The cask downloads the upstream DMG unchanged and verifies its SHA-256.
macOS Gatekeeper checks apply.
