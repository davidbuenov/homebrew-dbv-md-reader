# homebrew-dbv-md-reader

Homebrew tap for [DBV Markdown Reader](https://github.com/davidbuenov/dbv-md-reader) — a native, ultra-lightweight Markdown reader and editor for Windows, Linux and macOS, built with Rust + Tauri v2.

This repository contains only the Homebrew Cask definition. The actual application source code, releases, and macOS `.dmg` build live in [davidbuenov/dbv-md-reader](https://github.com/davidbuenov/dbv-md-reader).

## Install

```sh
brew tap davidbuenov/dbv-md-reader
brew install --cask dbv-md-reader
```

## Update

The Cask in this repo is updated automatically by CI in the main repository whenever a new macOS Release is published — no manual maintenance needed.

```sh
brew upgrade --cask dbv-md-reader
```
