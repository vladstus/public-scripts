#!/usr/bin/env bash
git clone git@github.com:vladstus/automation-scripts.git ~/Projects/Config_Files/automation-scripts

### TODO: Fix It
### Need to add this commented block to .zshrc

#if [ -d "$HOME/.bin" ] ;
#  then PATH="$HOME/.bin:$PATH"
#fi
#
#if [ -d "$HOME/.bin/user-scripts" ] ;
#  then PATH="$HOME/.bin/user-scripts:$PATH"
#fi
#
#if [ -d "$HOME/.local/bin" ] ;
#  then PATH="$HOME/.local/bin:$PATH"
#fi

bash ~/Projects/Config_Files/automation-scripts/shared/copyscripts

### We can't run gitsync before copyscripts

python3 ~/Projects/Config_Files/automation-scripts/shared/git/gitsync.py -a