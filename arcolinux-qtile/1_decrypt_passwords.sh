#!/usr/bin/env bash

yes | sudo pacman -S age
age --decrypt -o ~/Projects/Config_Files/public-scripts/arcolinux-qtile/.xignore ~/Projects/Config_Files/public-scripts/arcolinux-qtile/.xignore.bak
cat ~/Projects/Config_Files/public-scripts/arcolinux-qtile/.xignore
echo "Login into Chrome, 1P and github"
