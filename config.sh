#!/usr/bin/env bash

git config --global user.name "Cristian Mircea Messel"
git config --global user.email mess110@gmail.com
git config --global core.editor "vim"
git config --global alias.lg "log  --date=iso --color --graph --pretty=format:'%Cred%h%Creset - %C(green)%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global core.excludesfile ~/vimrc/.gitignore_global
git config --global color.ui true
