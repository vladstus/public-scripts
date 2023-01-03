#!/usr/bin/env bash
sudo git clone https://github.com/MichaelAquilina/zsh-you-should-use.git "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/you-should-use
sudo git clone https://github.com/supercrabtree/k "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/k
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM:=/usr/share/oh-my-zsh/custom}"/plugins/zsh-completions

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

sudo apt-get install python-pip vifm neovim

