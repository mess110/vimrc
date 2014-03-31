#!/bin/bash

# vim
rm -rf .vim/
cp -R ../.vim .

rm .vimrc
cp ../.vimrc .

# byobu
rm -rf .byobu
cp -R ../.byobu .

# Configure Conky (also uses bin/weather)
cp ../.conkyrc .

# ctags
cp ../.ctags .
