cask "tabtasker-dictate" do
  version "0.1.1"
  sha256 "cf99708cc08b3a4f0946f46002e1e438299859e61f5bbc39c6810ee6dc4b2006"

  url "https://github.com/vehicularis/tabtasker-dictate/releases/download/v#{version}/TabTasker-Dictate-#{version}-arm64.dmg"
  name "TabTasker Dictate"
  desc "On-device dictation, voice notes and meeting transcription"
  homepage "https://tabtasker.com/dictate"

  livecheck do
    url :url
    strategy :github_latest
  end

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
