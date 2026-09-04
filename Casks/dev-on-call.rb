cask "dev-on-call" do
  version "0.1.1"
  sha256 "ed104d211a07eac61932cedba51e2c0f02b53bb9f9b7a5a7444d8d1e92a128e9"

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
