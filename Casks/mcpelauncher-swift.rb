cask "mcpelauncher-swift" do
  version "0.1.15"
  sha256 "2c794eb674b1ef4b08b0c83a92299263528bdaab0a01cfc94b15980581344aa6"

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
