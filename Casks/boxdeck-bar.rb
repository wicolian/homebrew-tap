cask "boxdeck-bar" do
  version "0.3.1"
  sha256 "5939622f998ac25738fe8663736004956dce3e6854461e309362efa621873337"

  url "https://github.com/wicolian/boxdeck/releases/download/v#{version}/boxdeck-bar_darwin_universal.zip"
  name "boxdeck-bar"
  desc "Cross-platform menu bar client for boxdeck"
  homepage "https://github.com/wicolian/boxdeck"

  livecheck do
    url "https://github.com/wicolian/boxdeck"
    strategy :github_latest
  end

  app "BoxdeckBar.app"
end
