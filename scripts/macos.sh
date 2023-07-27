#!/usr/bin/env bash

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
