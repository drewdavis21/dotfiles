##############
# Zsh config #
##############

# Custom folder location
export ZSH_CUSTOM="$XDG_CONFIG_HOME/zsh/custom"

# Enable colors
autoload -U colors && colors

# Auto-cd
setopt autocd

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh/history"

# Aliases
[ -f "$XDG_CONFIG_HOME/aliasrc" ] && source "$XDG_CONFIG_HOME/aliasrc"

# vim mode
bindkey -v
export KEYTIMEOUT=1

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
_comp_options+=(globdots)		# Suggest hidden files too
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'	# Case-insensitve match

# vim keys in autocomplete
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'l' vi-forward-char
bindkey -v '^?' backward-delete-char

# Load dev tools
command -v pyenv >/dev/null && eval "$(pyenv init -)"
command -v rbenv >/dev/null && eval "$(rbenv init -)"

# Zsh-nvm
export NVM_LAZY_LOAD=true
source $ZSH_CUSTOM/zsh-nvm/zsh-nvm.plugin.zsh 2>/dev/null

# Syntax highlighting (requires fast-syntax-highlighting)
source $ZSH_CUSTOM/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

# Setup GPG tty
export GPG_TTY=$TTY

# Start Starship shell (https://github.com/starship/starship)
eval "$(starship init zsh)"
