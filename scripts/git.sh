#!/usr/bin/env bash

# Git Changes.
git config --global init.defaultBranch main

git config --global core.ignorecase true
git config --global core.editor nano

git config --global pull.rebase true

git config --global rerere.enabled true
git config --global rerere.autoupdate true

# Use interactive-rebase-tool (https://github.com/MitMaro/git-interactive-rebase-tool, installed separately via Brew).
git config --global sequence.editor interactive-rebase-tool

if [[ ! -f ~/.gitignore ]]; then
  cp -f ./git/.gitignore_global ~/.gitignore
  git config --global core.excludesfile ~/.gitignore
fi
