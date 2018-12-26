#!/usr/bin/env bash

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim git ack-grep xsel byobu conky conky-all gnome-shell google-chrome-stable zsh silversearcher-ag lm-sensors exuberant-ctags feh
