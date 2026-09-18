class Boxdeck < Formula
  desc "Live console for a remote dev box"
  homepage "https://github.com/wicolian/boxdeck"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wicolian/boxdeck/releases/download/v#{version}/boxdeck_darwin_arm64"
      sha256 "651408f6dc55cca04f151f3e66a70a8267d43f83b0c8486c6fe94cc0697f99eb"
    else
      url "https://github.com/wicolian/boxdeck/releases/download/v#{version}/boxdeck_darwin_amd64"
      sha256 "f51c084dc79ff5e481e95d603ee473d06862938d780dfefa50589987b3de8c4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wicolian/boxdeck/releases/download/v#{version}/boxdeck_linux_arm64"
      sha256 "a5b759248711f0a7ce97003e6cc65cb809b38900d32d0aa1e15b6c776074e073"
    else
      url "https://github.com/wicolian/boxdeck/releases/download/v#{version}/boxdeck_linux_amd64"
      sha256 "e713697631fe4ed83aa504993a5e35dab4024719c9079e0e544cb59c5ef67e09"
    end
  end

  def install
    bin.install Dir["boxdeck*"][0] => "boxdeck"
  end

  livecheck do
    url "https://github.com/wicolian/boxdeck"
    strategy :github_latest
  end

  service do
    run [opt_bin/"boxdeck", "serve"]
    keep_alive true
  end
end
