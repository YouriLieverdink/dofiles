## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dot-files

# ...or use HTTPS and switch remotes later.
git clone https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dot-files
```

3. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dot-files/Brewfile
```

4. Create symlinks in the Home directory to the real files in the repo.

```zsh
rm ~/.zshrc
ln -s ./.zshrc ~/.zshrc

ln -s .gitconfig ~/.gitconfig

rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dot-files/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```
