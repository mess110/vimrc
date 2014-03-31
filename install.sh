#!/bin/bash

# Prepare temp folder
mkdir -p ~/vimrc/tmp

# Mark all files within bin/ as executable
chmod +x bin/*

# Configure vim
rm -rf ~/.vimrc
cp .vimrc ~
cp -R .vim ~

rm -rf ~/.byobu
cp -R .byobu ~

# Configure Conky (also uses bin/weather)
cp .conkyrc ~

git config --global user.name "Cristian Mircea Messel"
# git config --global user.email mess110@gmail.com
git config --global core.editor "vim"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global core.excludesfile ~/vimrc/.gitignore_global
git config --global color.ui true

# TODO optimize this

# Add ~/vimrc/bin to PATH
# It makes sure the export command is only written once in ./bashrc
# If sed fails, mv is not executed
# sed '/^export PATH=~\/vimrc\/bin\:\$PATH/d' ~/.bashrc > ~/vimrc/tmp/file && mv ~/vimrc/tmp/file ~/.bashrc
# echo 'export PATH=~/vimrc/bin:$PATH' >> ~/.bashrc

# # Add tmux to .bashrc
# sed '/^\[\[\ \$TERM\ \!\=\ \"screen\"\ \]\]\ \&\&\ exec tmux/d' ~/.bashrc > ~/vimrc/tmp/file && mv ~/vimrc/tmp/file ~/.bashrc
# echo '[[ $TERM != "screen" ]] && exec tmux' >> ~/.bashrc
