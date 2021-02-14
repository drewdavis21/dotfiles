#####################
# ZSH CONFIGURATION #
#####################

# SETUP
#####################

# Set umask
umask 077

# Add Homebrew to PATH
export PATH="/opt/homebrew/bin:$PATH"

# Path for oh-my-zsh installation
export ZSH=$XDG_CONFIG_HOME/oh-my-zsh

# Clean up home dir further
ZSH_CACHE_DIR="$XDG_CACHE_HOME/oh-my-zsh"
ZSH_COMPDUMP="$ZSH_CACHE_DIR/zsh/zcompdump"
[ -d "$ZSH_CACHE_DIR" ] || mkdir -p "$ZSH_CACHE_DIR"

HISTFILE="$XDG_CACHE_HOME/zsh/history"
[ -f "$HISTFILE" ] || ( mkdir -p "$XDG_CACHE_HOME/zsh"; touch "$HISTFILE" )

LESSHISTFILE=-

export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"
[ -d "$GEM_HOME" ] || mkdir -p "$GEM_HOME"
[ -d "$GEM_SPEC_CACHE" ] || mkdir -p "$GEM_SPEC_CACHE"
[ -d "$BUNDLE_USER_CACHE" ] || mkdir -p "$BUNDLE_USER_CACHE"
[ -d "$BUNDLE_USER_PLUGIN" ] || mkdir -p "$BUNDLE_USER_PLUGIN"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# oh-my-zsh plugins
plugins=()

# Start oh-my-zsh
source $ZSH/oh-my-zsh.sh


# CONFIGURATION
#####################

# Enable vim mode
bindkey -v
export KEYTIMEOUT=1

# Use neovim, if present
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

# Add some color
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# Add verbose output
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -v"
alias mkdir="mkdir -pv"

# Setup GPG tty
export GPG_TTY=$TTY

# Default programs
export EDITOR="vim"

# Application aliases
app="/Applications"
if [[ $(uname) == "Darwin" ]]; then
	intellij() {
		open -na "IntelliJ IDEA CE.app" --args "$@"
	}
	[ -d "$app/IntelliJ IDEA CE.app" ] && alias idea=intellij
fi
unset app

# Add Homebrew Ruby to PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Add Ruby gems to PATH
export PATH="$XDG_DATA_HOME/gem/bin:$PATH"

# PROMPT
#####################

# Start Starship shell (https://github.com/starship/starship)
command -v starship >/dev/null && eval "$(starship init zsh)"
