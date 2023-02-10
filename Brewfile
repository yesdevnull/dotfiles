# https://github.com/Homebrew/homebrew-bundle
# Specify a directory to install apps.
cask_args appdir: "/Applications"

# Required taps.
tap "homebrew/cask"
tap "homebrew/cask-versions"
tap "homebrew/cask-fonts"
tap "homebrew/services"
tap "symfony-cli/tap"

# Original bash path: /bin/bash
#     Brew bash path: /opt/homebrew/bin/bash

# Core Tools
brew "bash"
brew "bash-completion@2"
brew "ca-certificates"
brew "curl"
brew "curl-openssl"
brew "coreutils"
brew "git"
brew "git-interactive-rebase-tool"
brew "gnupg", link: true if OS.mac?
brew "gnu-sed"
brew "grep"
brew "htop"
brew "make"
brew "nano"
brew "pinentry-mac" if OS.mac?
brew "screen"
brew "ssh-copy-id"
brew "telnet"
brew "zlib"
brew "zopfli"

# Development
brew "geckodriver"
brew "imagemagick"
brew "redis", restart_service: :changed
brew "gh"
brew "go"
brew "graphviz"
brew "httpd"
brew "hugo"
brew "nginx"
brew "node@16"
brew "python"
brew "sqlite"

# PHP
brew "php@7.4" || true
brew "php@8.0" || true
brew "php@8.1"
brew "php"
brew "symfony-cli"

# DevOps
brew "ansible"
brew "helm"
brew "kubernetes-cli"
brew "kustomize"
brew "minikube"
brew "skaffold"
brew "terraform@0.12"

# Audio/Visual
brew "exif"
brew "exiftool"
brew "ffmpeg"
brew "flac"
brew "yt-dlp"

# Fonts
cask "font-inconsolata"
cask "font-jetbrains-mono"
cask "font-jetbrains-mono-nerd-font"

# Apps
cask "1password-cli"
cask "alfred"
cask "bartender"
cask "chromedriver"
cask "drawio"
cask "firefox-developer-edition", greedy: true
cask "google-cloud-sdk", greedy: true
cask "handbrake"
cask "jetbrains-toolbox"
cask "notion"
cask "parsec"
cask "plexamp"
cask "sublime-text"
cask "transmit"
cask "vagrant"

brew "mas"
# mas "Gemini 2", id: 1090488118
# mas "Harvest"
# mas "Magnet", id: 441258766
# mas "Screens 4", id: 1224268771
# mas "xScope 4", id: 889428659