#!/bin/bash

sudo pacman -S linux-headers dkms
yay -S nvidia-470xx-dkms nvidia-470xx-settings

echo "Done."
