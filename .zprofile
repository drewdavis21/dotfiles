#!/bin/zsh

# Default programs
export EDITOR="vim"

### Clean up home dir ###
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export LESSHISTFILE="-"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"

# Node.js
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Python
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/.pythonrc"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"

# Ruby
export RBENV_ROOT="$XDG_DATA_HOME/rbenv"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"
