#!/bin/bash

# vim
rm -rf .vim/
cp -R ../.vim .
cp ../.vimrc .

# bowerrc
cp ../.bowerrc .

# byobu
rm -rf .byobu
cp -R ../.byobu .

# conky (also uses bin/weather)
cp ../.conkyrc .

# ctags
cp ../.ctags .
