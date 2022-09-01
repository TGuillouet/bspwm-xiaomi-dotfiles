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

# Define the lightdm configuration and desktop entries

# Copy the wallpapers

# Install the config
mkdir ~/.config/

# Install the window manager and key bindings config

# Install the rofi config

# Install the shell (fish) config

# Install the eww configuration

# Dunst config

# Kitty config

# Ranger config
