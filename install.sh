#!/bin/sh

install_zsh() {
  echo "zsh not found. Please install the zsh shell before re-running this script. Exiting..."
  exit 1
}

install_brew() {
  echo "brew not found. Please install the Homebrew package manager before re-running this script. Exiting..."
  exit 1
}

install_prompt() {
  echo "Installing starship prompt..."
  if [[ $(uname) -eq 'Darwin']]; then
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

# 2. Ensure brew is installed (on macOS)
if [[ $(uname) -eq 'Darwin' && ! command -v brew >/dev/null 2>&1 ]]; then
  install_brew
fi

# 2. Ensure starship prompt is installed
if ! command -v starship >/dev/null 2>&1; then
  install_prompt
fi

# 3. Evaluate settings.sh, link to home directory
zsh config.zsh
