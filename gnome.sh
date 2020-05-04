#!/bin/sh
# My Gnome 3 installation script. Use it as root on a freshly installed Debian.
# by Clément Lalanne
# License: GNU GPLv3

### THE ACTUAL SCRIPT ###

#Install gnome desktop environment
#tasksel install desktop gnome-desktop

sudo apt update
sudo apt upgrade

sudo apt install xserver-xorg xserver-xorg-core xfonts-base xinit 

sudo apt install libgl1-mesa-dri x11-xserver-utils gnome-session gnome-shell gnome-terminal gnome-control-center nautilus gnome-icon-theme 

sudo apt install lightdm

#apt install network-manager-openvpn-gnome

# Install the build essentials
sudo apt install curl build-essential git

#Set graphical at start 
#systemctl set-default graphical.targetapt

#Install the theme
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions

sudo apt install breeze-cursor-theme arc-theme materia-gtk-theme papirus-icon-theme

git clone https://github.com/clemlal/backgrounds.git 


