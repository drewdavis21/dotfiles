#!/bin/sh

install_zsh() {
  echo "zsh not found. Please install the zsh shell before re-running this script. Exiting..."
  exit 1
}

install_prompt() {
  echo "Installing starship prompt..."
  OS="$(uname)"
  if [[ $OS -eq 'Darwin']]; then
    brew install starship
  else
    curl -fsSL https://starship.rs/install.sh | bash
  fi
}

set -e

# 1. Ensure zsh is installed
if ! command -v zsh >/dev/null 2>&1; then
  install_zsh
fi

# 2. Ensure starship prompt is installed
if ! command -v starship >/dev/null 2>&1; then
  install_prompt
fi

# 3. Evaluate settings.sh, link to home directory
zsh config.zsh
