cask "repomancer" do
  version "0.0.2"
  sha256 "12f674884e82e569ddaa08b73a90348e9af333ce7e5555ee108e5df1939ea606"
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
