#!/bin/bash

cp ~/.ctags .

cp ~/.vimrc .
cp ~/.sonoff-aliases .

cp ~/.config/i3/config .config/i3/config
cp ~/.config/i3status/config .config/i3status/config

rm -rf .byobu
cp -R ~/.byobu .
