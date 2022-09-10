#!/bin/sh

# Install the dependencies
sudo pacman -Syu \
    xorg nvidia \
    bspwm sxhkd \
    vim git \
    pavucontrol kitty \
    firefox alsa-utils \
    rofi exa \
    brightnessctl lightdm \
    lightdm-gtk-greeter fish \
    starship \
    ranger scrot \
    neofetch base-devel feh

# Install yay
git clone https://aur.archlinux.org/yay.git
(cd ~/yay && makepkg -si )

# Install the AUR dependencies
yay -S picom-jonaburg-git \
        acpi \
        dunst \
        betterlockscreen \
        eww-git \
        shell-color-scripts \
        nerd-fonts-fira-code \
        xclip

# Copy the wallpapers
cp wallpapers ~/.wallpapers

# Backup the old .config
mv ~/.config ~/.config.old

# Install the config
mkdir ~/.config/
cp -r ./config ~/.config
