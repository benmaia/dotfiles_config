#!/bin/bash

# Update and Upgrade
sudo apt update && sudo apt upgrade -y

# Basics
sudo apt install git -y
 sudo apt install curl -y

# Install unzip
sudo apt install unzip

# Install neovim config
git -C ~/ clone https://github.com/benmaia/neovim.git
bash /home/$(whoami)/neovim/install.sh

# Docker + Ansible
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

 sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
 sudo groupadd docker
 sudo usermod -aG docker $USER
 newgrp docker

python3 -m pip install --user ansible
pip install docker

# Install CMake + GTest +GMock

sudo apt-get install build-essential libssl-dev -y
sudo apt install cmake -y

sudo apt-get install libgtest-dev -y
sudo apt install -y libgmock-dev

sudo apt-get install -y pkg-config

# Install Clang-Format
sudo apt install clang-format -y 

# Install QT 5
sudo apt-get install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools -y

#ZSH shell
sudo apt install zsh -y
chsh -s $(which zsh)
[ -d "/home/$(whoami)/.oh-my-zsh" ] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#ZSH config
curl -sS https://starship.rs/install.sh | sh
sudo cp /home/$(whoami)/dotfiles_config/.zshrc /home/$(whoami)
sudo cp /home/$(whoami)/dotfiles_config/.p10k.zsh /home/$(whoami)
#sudo cp /home/$(whoami)/dotfiles_config/custom.zsh-theme /home/$(whoami)/.oh-my-zsh/themes

