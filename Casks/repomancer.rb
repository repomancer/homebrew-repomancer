cask "repomancer" do
  version "0.0.3"
  sha256 "211e499b4f60184ebafef33bba3282d8e86fde3b00fd326ac1b9ef7898e61b29"
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
