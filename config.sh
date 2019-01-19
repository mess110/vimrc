#!/usr/bin/env bash

sudo apt update
sudo apt upgrade

sudo apt install -y vim git ack-grep xsel byobu google-chrome-stable zsh silversearcher-ag lm-sensors exuberant-ctags feh jq scrot xautolock pavucontrol
pip3 install i3ipc

git config --global user.name "Cristian Mircea Messel"
git config --global user.email mess110@gmail.com
git config --global core.editor "vim"
git config --global alias.lg "log  --date=iso --color --graph --pretty=format:'%Cred%h%Creset - %C(green)%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global core.excludesfile ~/vimrc/.gitignore_global
git config --global color.ui true

rm -rf gnome-terminal-colors-solarized
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized
cd gnome-terminal-colors-solarized && ./install.sh

cd /usr/bin && sudo ln -s $HOME/vimrc/bin/i3cyclebash i3cyclebash
cd /usr/bin && sudo ln -s $HOME/vimrc/bin/i3cycle i3cycle
cd /usr/bin && sudo ln -s $HOME/vimrc/bin/monitors monitors
cd /usr/bin && sudo ln -s $HOME/vimrc/bin/change_background change_background
cd /usr/bin && sudo ln -s $HOME/vimrc/bin/weather weather
