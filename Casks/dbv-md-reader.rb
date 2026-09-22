cask "dbv-md-reader" do
  version "0.17.0"
  sha256 "cc73544d29b0e4b5d26e546df64089cc58f906d76870d95effe5614cd53dd79c"

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
