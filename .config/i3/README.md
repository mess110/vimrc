# i3 setup

i3
i3status – status bar info
i3lock – screen locker
dmenu – app launcher (default Mod+d)
feh – wallpapers
picom – compositor (transparency, tearing fixes)

```sh
sudo apt install \
  i3 i3status i3blocks i3lock dmenu feh picom \
  gnome-screenshot volumeicon-alsa zenity jq iw
sudo update-alternatives --config x-session-manager
ln -s ~/vimrc/.config/i3 ~/.config/i3
ln -s ~/vimrc/.config/i3status ~/.config/i3status
ln -s ~/vimrc/.config/i3blocks ~/.config/i3blocks
ln -s ~/vimrc/bin/i3cyclebar ~/.local/bin/i3cyclebar
ln -s ~/vimrc/bin/i3cycle ~/.local/bin/i3cycle
```

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
