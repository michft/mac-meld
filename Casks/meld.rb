cask "meld" do
  version "3.24.1"
  sha256 "b5d39bc97e1c94d9c86eb3f2b33725ae840e7856ab07145f76dca0b4a8837ec0"

  url "https://gitlab.gnome.org/api/v4/projects/301/packages/generic/meld/#{version}/Meld-#{version}-arm64.dmg"
  name "Meld"
  desc "Visual diff and merge tool"
  homepage "https://meld.app/"

  livecheck do
    url "https://gitlab.gnome.org/GNOME/meld.git"
    regex(/^(\d+\.\d*[02468]\.\d+)$/i)
    strategy :git
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Meld.app"
  command_wrapper "meld",
                  executable: "#{appdir}/Meld.app/Contents/MacOS/Meld"

  zap trash: [
    "~/.local/share/meld",
    "~/Library/Application Support/org.gnome.Meld",
    "~/Library/Caches/org.gnome.Meld",
    "~/Library/Preferences/org.gnome.Meld.plist",
    "~/Library/Saved Application State/org.gnome.Meld.savedState",
  ]
end
