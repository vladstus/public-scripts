#!/usr/bin/env bash

yes | sudo pacman -S age
age --decrypt -o .xignore .xignore.bak && cat .xignore
echo "Login into Chrome, 1P and github"
