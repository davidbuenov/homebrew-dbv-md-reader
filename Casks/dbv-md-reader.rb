cask "dbv-md-reader" do
  version "0.19.0"
  sha256 "26655cdd850e97bf569b9b8eb5cc00475f62571de5ac8197685922029e741f82"

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
