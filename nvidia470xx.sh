#!/bin/bash

# Create a new user to build and install packages
sudo useradd -m pkgbuilder

# Clone yay-git repository and build package
sudo -u pkgbuilder bash -c 'cd ~ && git clone https://aur.archlinux.org/yay-git.git && cd yay-git && makepkg -si'

# Remove pkgbuilder user
sudo userdel -r pkgbuilder

# Update system and install Nvidia 470 driver and dependencies
yay -Syu --noconfirm
yay -S --noconfirm linux-headers nvidia-470xx-dkms nvidia-470xx-settings nvidia-470xx-utils

# Update system again
sudo pacman -Suy --noconfirm

echo "Done."
