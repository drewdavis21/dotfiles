# dotfiles

This repo contains my personal "dotfiles" (environment configuration files). Feel free to copy or clone this repo and make any changes you'd like. Please note that these configuration files do not support Windows command prompt or Powershell.

## Prerequisites
- [Zsh](https://github.com/zsh-users/zsh)
- [Homebrew](https://brew.sh) (if on macOS)

## Installation
Clone this repository, along with all of its submodules.

```bash
$ git clone --recurse-submodules https://github.com/drewdavis21/dotfiles.git
```

Then run the `install.sh` script inside of the repository. This will install the [`starship`](https://github.com/starship/starship) prompt, set up your Git config, link the necessary files into your home directory, and get you ready to go with your new environment!
