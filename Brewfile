# https://github.com/Homebrew/homebrew-bundle
# Specify a directory to install apps.
cask_args appdir: "/Applications"

# Core taps
tap "homebrew/cask-versions"
tap "homebrew/cask-fonts"
tap "homebrew/services"
# Additional taps
tap "humbug/box"
tap "microsoft/mssql-release"
tap "symfony-cli/tap"

# Original bash path: /bin/bash
#     Brew bash path: /usr/local/bin/bash

# Core Tools
brew "bash"
brew "bash-completion@2"
brew "ca-certificates"
brew "curl"
brew "coreutils"
brew "git"
brew "git-interactive-rebase-tool"
brew "gnu-sed" if OS.mac?
brew "grep"
brew "htop"
brew "make"
brew "nano"
brew "pinentry-mac" if OS.mac?
brew "rsync"
brew "screen"
brew "ssh-copy-id"
brew "telnet"
brew "wget"
brew "zlib"
brew "zopfli"

# Development
brew "act"
brew "corepack"
brew "dnsmasq"
brew "geckodriver"
brew "imagemagick"
brew "redis", restart_service: :changed
brew "gh"
brew "go"
brew "gobject-introspection"
brew "graphviz"
brew "httpd"
brew "hugo"
brew "msodbcsql17"
brew "mssql-tools"
brew "nghttp2"
brew "nginx"
brew "nmap"
brew "node"
brew "node@16"
brew "python"
brew "sqlite"

# PHP
brew "box"
# brew "php@7.4" || true
brew "php@8.0" || true
brew "php@8.1"
brew "php"
brew "symfony-cli"

# DevOps
brew "ansible"
brew "azure-cli"
brew "helm"
brew "kubernetes-cli"
brew "kustomize"
brew "minikube"
brew "packer"
brew "protobuf"
brew "skaffold"
# brew "terraform@0.12"

# Audio/Visual
brew "exif"
brew "exiftool"
brew "ffmpeg"
brew "yt-dlp"

# Fonts
cask "font-inconsolata"
cask "font-jetbrains-mono"
cask "font-jetbrains-mono-nerd-font"

# Apps
cask "1password-cli"
cask "alfred"
cask "azure-data-studio"
cask "bartender"
cask "chromedriver"
cask "dash"
cask "drawio"
cask "firefox-developer-edition", greedy: true
cask "fission"
cask "google-cloud-sdk", greedy: true
cask "handbrake"
cask "istat-menus"
cask "imageoptim"
cask "jetbrains-toolbox"
cask "microsoft-excel"
cask "microsoft-outlook"
cask "microsoft-remote-desktop"
cask "microsoft-teams"
cask "microsoft-word"
cask "notion"
cask "parsec"
cask "piezo"
cask "plexamp"
cask "postman"
cask "sketch"
cask "soundsource"
cask "sublime-text"
cask "syncthing"
cask "transmit"
cask "vagrant"
cask "vlc"

brew "mas"
mas "1Password for Safari", id: 1569813296
mas "Base", id: 402383384
mas "DaisyDisk", id: 411643860
mas "Gemini 2", id: 1090488118
mas "Ghostery – Privacy Ad Blocker", id: 1436953057
mas "Harvest", id: 506189836
mas "Hush", id: 1544743900
mas "Keynote", id: 409183694
mas "Magic Lasso", id: 1198047227
mas "Magnet", id: 441258766
mas "Numbers", id: 409203825
mas "Pages", id: 409201541
mas "PDF Expert", id: 1055273043
mas "Pixelmator Pro", id: 1289583905
mas "Screens", id: 1224268771
mas "StopTheMadness", id: 1376402589
mas "Soulver 3", id: 1508732804
mas "xScope", id: 889428659
