#!/usr/bin/env bash

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

mkdir -p ~/.local/share/bash-completion/completions/

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;
