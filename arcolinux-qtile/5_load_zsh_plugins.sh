#!/usr/bin/env bash
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/you-should-use
git clone https://github.com/supercrabtree/k "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM:=~/.oh-my-zsh/custom}"/plugins/zsh-completions

git clone git://github.com/wting/autojump.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/autojump
cd ~/.oh-my-zsh/custom/plugins/autojump || exit
python ./install.py

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

yes | sudo pacman -S python-pip vifm neovim


pip install virtualenvwrapper

curl -s "https://get.sdkman.io" | bash
source "/home/gaazhag/.sdkman/bin/sdkman-init.sh"