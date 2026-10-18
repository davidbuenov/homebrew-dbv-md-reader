cask "dbv-md-reader" do
  version "0.18.0"
  sha256 "e44aa247dcac349f6178c22a3d8e2f42905bce621e39721177edd3035136e145"

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
