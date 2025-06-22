cask "repomancer" do
  version "0.0.4"
  sha256 "1c0ee80ca1afedc0b37db7045d1adced131f97cfde65bb31683e43ccaf39af08"
  url "https://github.com/repomancer/repomancer/releases/download/v#{version}/Repomancer-#{version}-Darwin-arm64.dmg"
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
  depends_on formula: "gh"

  app "Repomancer.app"
  binary "#{appdir}/Repomancer.app/Contents/MacOS/repomancer"

  zap trash: [
    "~/Library/Preferences/fyne/com.sheersky.repomancer",
  ]
end
