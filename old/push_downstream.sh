#!/usr/bin/env bash

cp .ctags ~

cp .vimrc ~
cp .sonoff-aliases ~

mkdir -p ~/.config/i3/
cp .config/i3/config ~/.config/i3/config

mkdir -p ~/.config/i3status/
cp .config/i3status/config ~/.config/i3status/config

rm -rf ~/.byobu
cp -R .byobu ~

