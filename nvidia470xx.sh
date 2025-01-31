#!/bin/bash
echo instaling git then yay
sleep 1
sudo pacman -Sy git
sudo git clone https://aur.archlinux.org/yay-git.git
echo write your username
read name
sudo chown -R $name ./yay-git
cd yay-git
makepkg -si
sudo yay -Syu
yay -Syu --devel --timeupdate

# For newest Nvidia series 
# yay -S linux-headers nvidia-dkms nvidia-settings nvidia-utils

yay -S linux-headers nvidia-470xx-dkms nvidia-470xx-settings nvidia-470xx-utils


sudo pacman -Suy
