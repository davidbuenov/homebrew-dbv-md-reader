cask "dbv-md-reader" do
  version "0.16.0"
  sha256 "4b22a1587f398a8a064f098332e1d8ef8c00e453ab7e979a7be6f3dcd3d5463c"

  url "https://github.com/davidbuenov/dbv-md-reader/releases/download/v#{version}/DBV.Markdown.Reader_#{version}_universal.dmg"
  name "DBV Markdown Reader"
  desc "Native, lightweight Markdown reader and editor built with Rust + Tauri v2"
  homepage "https://github.com/davidbuenov/dbv-md-reader"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "DBV Markdown Reader.app"

  zap trash: [
    "~/Library/Application Support/com.davidbuenov.dbv-md-reader",
    "~/Library/Saved Application State/com.davidbuenov.dbv-md-reader.savedState",
  ]
end
