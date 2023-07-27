#!/usr/bin/env bash

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source ~/.profile

# https://rust-lang.github.io/rustup/installation/index.html#enable-tab-completion-for-bash-fish-zsh-or-powershell
rustup completions bash > ~/.local/share/bash-completion/completions/rustup
. ~/.local/share/bash-completion/completions/rustup
