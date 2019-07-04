#!/bin/bash
##################################################
# Author: topf82
# Date:   2019-07-04					                     
# Install KDE Plasma Integration for Arch Linux and the Snapstore
#                                                 
##################################################

#Install needed Packages
#sudo pacman -S discover --> if discover isn't already installed

sudo pacman -S  packagekit-qt5 -noconfirm


#Install Snapd Support

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si

sudo systemctl enable --now snapd.socket

sudo ln -s /var/lib/snapd/snap /snap


#Install SnapStore

sudo snap install snap-store

#Reboot

