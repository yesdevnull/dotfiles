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

# Configure the default screenshot location and format.
defaults write com.apple.sceencapture location ~/Downloads
defaults write com.apple.sceencapture type jpeg

# Allow the press and hold character accent picker.
defaults write -g ApplePressAndHoldEnabled -bool true

# Git Changes.
git config --global init.defaultBranch main

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install grep
brew install nano
brew install openssh
brew install screen

# Install other useful binaries.
brew install brotli
brew install imagemagick --with-webp
brew install mas
brew install nmap
brew install rename
brew install ssh-copy-id
brew install youtube-dl
brew install zopfli

# JavaScript.
brew install node
brew install yarn

# Web Servers.
brew install httpd
brew install nginx

# PHP related.
brew install php@7.4

# Remove outdated versions from the cellar.
brew cleanup
