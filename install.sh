#!/bin/bash

# Command line tools
xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file ~/.dot-files/Brewfile

# Symlinks
ln -sf ~/.dot-files/system/.zshrc ~/.zshrc
ln -sf ~/.dot-files/config/git/.gitconfig ~/.gitconfig
ln -sf ~/.dot-files/config/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
