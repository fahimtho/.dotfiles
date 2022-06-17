#!/usr/bin/env sh

# Copy Confs To Local Location And Notify Me

### Confs
sleep 1s
cp -r ~/.bashrc ~/Files/dotfiles/config
cp -r ~/.tabliss.json ~/Files/dotfiles/config
cp -r ~/.tasks.json ~/Files/dotfiles/config
cp -r ~/.tmux.conf ~/Files/dotfiles/config
cp -r ~/.tasks ~/Files/dotfiles/config
cp -r ~/.vimium-options.json ~/Files/dotfiles/config
cp -r ~/.vimrc ~/Files/dotfiles/config
cp -r ~/.Xmodmap ~/Files/dotfiles/config
cp -r ~/.xprofile ~/Files/dotfiles/config
cp -r ~/.Xresources ~/Files/dotfiles/config
cp -r ~/.zshrc ~/Files/dotfiles/config
cp -r ~/.profile ~/Files/dotfiles/config
cp -r ~/.config/bspwm ~/Files/dotfiles/config
cp -r ~/.config/dunst/ ~/Files/dotfiles/config
cp -r ~/.config/kitty/ ~/Files/dotfiles/config
cp -r ~/.config/miniplayer/ ~/Files/dotfiles/config
cp -r ~/.config/mpd/ ~/Files/dotfiles/config
cp -r ~/.config/mpv/ ~/Files/dotfiles/config
cp -r ~/.config/ncmpcpp/ ~/Files/dotfiles/config
cp -r ~/.config/neofetch/ ~/Files/dotfiles/config
cp -r ~/.config/nvim/ ~/Files/dotfiles/config
cp -r ~/.config/picom/ ~/Files/dotfiles/config
cp -r ~/.config/polybar/ ~/Files/dotfiles/config
cp -r ~/.config/rofi/ ~/Files/dotfiles/config
cp -r ~/.config/sioyek/ ~/Files/dotfiles/config
cp -r ~/.config/sxhkd/ ~/Files/dotfiles/config
cp -r ~/.config/ytfzf/ ~/Files/dotfiles/config
cp -r ~/.config/zathura/ ~/Files/dotfiles/config
cp -r ~/.config/greenclip.toml ~/Files/dotfiles/config
cp -r ~/.config/spicetify/config-xpui.ini ~/Files/dotfiles/config
cp -r ~/.config/BetterDiscord/themes/neutron.theme.css ~/Files/dotfiles/config
cp -r ~/.config/ranger/ ~/Files/dotfiles/config
cp -r ~/.config/rofi-ttv/ ~/Files/dotfiles/config
cp -r ~/.config/rofify/ ~/Files/dotfiles/config
cp -r ~/.config/spotifyd/ ~/Files/dotfiles/config
cp -r ~/.config/starship.toml ~/Files/dotfiles/config
cp -r ~/.config/user-dirs.dirs ~/Files/dotfiles/config

### Binarys
sleep 1s
sudo cp -r /usr/bin/color ~/Files/dotfiles/bin
sudo cp -r /usr/bin/rofi-mpc ~/Files/dotfiles/bin
sudo cp -r /usr/bin/nmcli_rofi ~/Files/dotfiles/bin
sudo cp -r /usr/bin/pulseaudio-control ~/Files/dotfiles/bin
sudo cp -r /usr/bin/rofi-bluetooth ~/Files/dotfiles/bin
sudo cp -r /usr/bin/xkcd ~/Files/dotfiles/bin
sudo cp -r ~/.gdbinit ~/Files/dotfiles/bin
cp -r ~/.scripts/ ~/Files/dotfiles/bin

# Misc
sleep 1s
cp -r ~/.vivaldi/ ~/Files/dotfiles/misc
cp -r ~/.themes/ ~/Files/dotfiles/misc

### Do some nickpicking
sleep 1s
rm ~/Files/dotfiles/config/nvim/undodir/*
