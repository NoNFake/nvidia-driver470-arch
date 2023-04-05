#!/bin/bash

# Install git and yay
echo "Installing Git and Yay..."
sudo pacman -Sy git
sudo git clone https://aur.archlinux.org/yay-git.git /tmp/yay-git
cd /tmp/yay-git
sudo chown -R $USER:$USER .
makepkg -si --noconfirm
cd -
sudo yay -Syu --noconfirm

# Install Nvidia 470 driver and dependencies
echo "Installing Nvidia 470 driver and dependencies..."
sudo yay -S --noconfirm linux-headers nvidia-470xx-dkms nvidia-470xx-settings nvidia-470xx-utils

# Update system
echo "Updating system..."
sudo pacman -Suy --noconfirm

echo "Done."
