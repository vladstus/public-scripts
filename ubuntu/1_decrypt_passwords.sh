#!/usr/bin/env bash

sudo apt-get install age
age --decrypt -o ~/Projects/Config_Files/public-scripts/ubuntu/.xignore ~/Projects/Config_Files/public-scripts/ubuntu/.xignore.bak
cat ~/Projects/Config_Files/public-scripts/ubuntu/.xignore
printf "\nLogin into Chrome, 1P and github\n"
rm -r ~/Projects/Config_Files/public-scripts/ubuntu/.xignore