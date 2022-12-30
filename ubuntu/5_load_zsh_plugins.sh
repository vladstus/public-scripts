#!/usr/bin/env bash
sudo git clone https://github.com/MichaelAquilina/zsh-you-should-use.git "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/you-should-use
sudo git clone https://github.com/supercrabtree/k "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/k
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-/usr/share/oh-my-zsh/custom}"/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM:=/usr/share/oh-my-zsh/custom}"/plugins/zsh-completions

sudo git clone git://github.com/wting/autojump.git ${ZSH_CUSTOM:=/usr/share/oh-my-zsh/custom}/plugins/autojump
cd /usr/share/oh-my-zsh/custom/plugins/autojump || exit
python ./install.py

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

yes | sudo pacman -S python-pip vifm neovim


pip install virtualenvwrapper

curl -s "https://get.sdkman.io" | bash
source "/home/gaazhag/.sdkman/bin/sdkman-init.sh"