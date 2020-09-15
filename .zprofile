#!/bin/zsh

# Default programs
export EDITOR="vim"

# Clean up home dir
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="-"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/.pythonrc"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export VSCODE_PORTABLE="$XDG_DATA_HOME/vscode"
export GOPATH="$XDG_DATA_HOME/go"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export RBENV_ROOT="$XDG_DATA_HOME/rbenv"
export DOCKER_CONFIG="$XDG_DATA_HOME/docker"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
