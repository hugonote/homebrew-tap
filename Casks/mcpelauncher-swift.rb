cask "mcpelauncher-swift" do
  version "0.1.14"
  sha256 "fd834d14ab2877c719bd0aa7a8b9ec86027e25a17e466cf4bf04cd01083c3796"

  url "https://github.com/hugonote/mcpelauncher-swift/releases/download/v#{version}/Minecraft.Bedrock.Launcher-#{version}.dmg"
  name "Minecraft Bedrock Launcher"
  desc "Native SwiftUI launcher for Minecraft: Bedrock Edition on macOS"
  homepage "https://github.com/hugonote/mcpelauncher-swift"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Minecraft Bedrock Launcher.app"

  uninstall quit: "local.minecraft.bedrock.swiftlauncher"

  zap trash: [
    "~/Library/Application Support/Minecraft Bedrock Launcher",
    "~/Library/Preferences/local.minecraft.bedrock.swiftlauncher.plist",
    "~/Library/Saved Application State/local.minecraft.bedrock.swiftlauncher.savedState",
  ]
end
