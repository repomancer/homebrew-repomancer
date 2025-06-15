cask "repomancer" do
  version "0.0.1"
  sha256 "6e514188f549598f166d6dcb6f8df29f333e954e28172a2901ea988a14f2647"
  url url "https://github.com/repomancer/repomancer/releases/download/v#{version}/Repomancer-#{version}-Darwin-arm64.dmg"
  name "Repomancer"
  desc "Manage mass changes across repositories"
  homepage "https://github.com/repomancer/repomancer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "repomancer@tip"
  depends_on macos: ">= :ventura"

  app "Repomancer.app"
  binary "#{appdir}/Repomancer.app/Contents/MacOS/repomancer"

  zap trash: [
    "~/Library/Preferences/fyne/com.sheersky.repomancer",
  ]
end
