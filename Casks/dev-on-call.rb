cask "dev-on-call" do
  version "0.1.2"
  sha256 "989a88feaa0d157af388547811ea9afdc6305a473d76ddbfb96cb01caa616c62"

  url "https://github.com/wicolian/dev-on-call/releases/download/v#{version}/Dev-On-Call-macOS.dmg"
  name "Dev On Call"
  desc "Quiet local-first menu bar monitor for developers and coding agents"
  homepage "https://github.com/wicolian/dev-on-call"

  depends_on macos: :ventura

  app "Dev On Call.app"
  binary "#{appdir}/Dev On Call.app/Contents/Helpers/dev-on-call"

  uninstall quit: "com.wicolian.dev-on-call"

  zap trash: [
    "~/Library/Application Support/DevOnCall",
    "~/Library/Preferences/com.wicolian.dev-on-call.plist",
  ]
end
