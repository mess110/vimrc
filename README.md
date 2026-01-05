# vimrc

A collection of scripts/configs

## nvim

```sh
sudo snap install nvim --classic
ln -s ~/vimrc/.config/nvim ~/.config/nvim
```

## i3

```sh
sudo apt install \
  i3 i3blocks i3lock dmenu feh picom \
  gnome-screenshot volumeicon-alsa zenity jq iw fd-find tmux pulseaudio-utils
sudo update-alternatives --config x-session-manager

ln -s ~/vimrc/.config/tmux ~/.config/tmux
ln -s ~/vimrc/.config/i3 ~/.config/i3
ln -s ~/vimrc/.config/i3blocks ~/.config/i3blocks
ln -s ~/vimrc/bin/i3cyclebar ~/.local/bin/i3cyclebar
ln -s ~/vimrc/bin/i3cycle ~/.local/bin/i3cycle
ln -s ~/vimrc/bin/i3cycleaudio ~/.local/bin/i3cycleaudio
```

## xrandr

```sh
xrandr

# both displays
xrandr \
  --output DP-2 --mode 2560x1440 --primary \
  --output HDMI-0 --mode 1920x1080 --right-of DP-2

# clone displays
xrandr --output DP-2 --same-as HDMI-0

# main display only
xrandr --output HDMI-0 --off --output DP-2 --auto --primary

# add to autostart
exec --no-startup-id xrandr \
  ...
```
