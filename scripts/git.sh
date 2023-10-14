#!/usr/bin/env bash

# Git Changes.
git config --global init.defaultBranch main

git config --global core.ignorecase true

git config --global pull.rebase true

git config --global rerere.enabled true
git config --global rerere.autoupdate true

cp -f ./git/.gitignore_global ~/.gitignore
git config --global core.excludesfile ~/.gitignore
