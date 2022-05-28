#!/bin/bash

# Update and Upgrade
sudo apt update && sudo apt upgrade -y

# Basics
[ -f "/usr/bin/git" ] || sudo apt install git -y
[ -f "/usr/bin/curl" ] || sudo apt install curl -y

# Init submodules
git submodule init
git submodule update

# Install neovim config
sudo cp -r /home/$(whoami)/dotfiles_config/nvim /home/$(whoami)
~/nvim/./install.sh
rm -rf /home/$(whoami)/nvim

#ZSH shell
[ -f "/usr/bin/zsh" ] || sudo apt install zsh -y || chsh -s $(which zsh)
[ -d "/home/$(whoami)/.oh-my-zsh" ] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#ZSH config
sudo cp /home/$(whoami)/dotfiles_config/.zshrc /home/$(whoami)
sudo cp /home/$(whoami)/dotfiles_config/custom.zsh-theme /home/$(whoami)/.oh-my-zsh/themes
