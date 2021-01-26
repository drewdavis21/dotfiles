# Add Homebrew to path
export PATH="/opt/homebrew/bin:$PATH"

# Set umask
umask 077

# Default programs
export EDITOR="vim"

### Clean up home dir ###
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
[ -d "$XDG_DATA_HOME" ] || mkdir -p "$XDG_DATA_HOME"
[ -d "$XDG_CACHE_HOME" ] || mkdir -p "$XDG_CACHE_HOME"

# Disable .zsh_sessions in macOS
SHELL_SESSIONS_DISABLE=1
