#!/usr/bin/env bash

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

mkdir -p ~/.local/share/bash-completion/completions/

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source ~/.profile

# https://rust-lang.github.io/rustup/installation/index.html#enable-tab-completion-for-bash-fish-zsh-or-powershell
rustup completions bash > ~/.local/share/bash-completion/completions/rustup
. ~/.local/share/bash-completion/completions/rustup

# macOS Changes.

# Show all the bars! Well, except for the Tab bar, because I don't use Finder tabs.
defaults write com.apple.Finder ShowPathbar 1
defaults write com.apple.Finder ShowSidebar 1
defaults write com.apple.Finder ShowStatusBar 1

# Configure the default screenshot location and format.
defaults write com.apple.sceencapture location ~/Downloads
defaults write com.apple.sceencapture type jpeg

# Allow the press and hold character accent picker.
defaults write -g ApplePressAndHoldEnabled -bool true

# Git Changes.
git config --global init.defaultBranch main

git config --global core.ignorecase true

git config --global pull.rebase true

git config --global rerere.enabled true
git config --global rerere.autoupdate true

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;
