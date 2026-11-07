cask "tabtasker-dictate" do
  version "0.1.2"
  sha256 "2573423cbe71d09054b8f9def2c03b7e647ba6b5b243b34f89719280ea2e8ab8"

  url "https://github.com/vehicularis/tabtasker-dictate/releases/download/v#{version}/TabTasker-Dictate-#{version}-arm64.dmg"
  name "TabTasker Dictate"
  desc "On-device dictation, voice notes and meeting transcription"
  homepage "https://tabtasker.com/dictate"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "TabTasker Dictate.app"

  zap trash: [
    "~/Library/Application Support/com.tabtasker.dictate",
    "~/Library/Caches/com.tabtasker.dictate",
    "~/Library/Logs/TabTasker Dictate",
    "~/Library/Preferences/com.tabtasker.dictate.plist",
    "~/Library/WebKit/com.tabtasker.dictate",
  ]
end
