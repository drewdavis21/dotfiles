#!/bin/zsh

dotfiles_dir=$(dirname $0:A)

# 1. Read in user settings, update Git config
if [[ $(uname) -eq 'Darwin' && ! command -v envsubst >/dev/null 2>&1 ]]; then
  brew install gettext
fi
echo "Now configuring Git..."
read -r user_name\?"Please enter your full name: " 
read -r user_email\?"Please enter your email address: "
read -r user_github\?"Please enter your GitHub username: "
user_name=$user_name user_email=$user_email user_github=$user_github \
  envsubst < $dotfiles_dir/.config/git/config.example > $dotfiles_dir/.config/git/config

# 2. Link to home directory
ln -s "$dotfiles_dir/.config" "$HOME/.config"
ln -s "$dotfiles_dir/.zprofile" "$HOME/.zprofile"

# 3. Source shell dependencies
source "$dotfiles_dir/.zprofile"
source "$dotfiles_dir/.config/zsh/.zshrc"

# 4. Set up config/data directories
[ -d $VSCODE_PORTABLE ] || mkdir -p $VSCODE_PORTABLE
[ -d $GOPATH ] || mkdir -p $GOPATH
[ -d $PYENV_ROOT ] || mkdir -p $PYENV_ROOT
[ -d $NVM_HOME ] || mkdir -p $NVM_HOME
[ -d $RBENV_ROOT ] || mkdir -p $RBENV_ROOT
[ -d $DOCKER_CONFIG ] || mkdir -p $DOCKER_CONFIG
