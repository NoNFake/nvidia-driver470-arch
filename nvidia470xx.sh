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
yay -S linux-headers nvidia-dkms nvidia-settings nvidia-utils
sudo pacman -Suy
