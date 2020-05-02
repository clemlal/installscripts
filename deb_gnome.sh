#!/bin/sh
# My Gnome 3 installation script. Use it as root on a freshly installed Debian.
# by Clément Lalanne
# License: GNU GPLv3

### THE ACTUAL SCRIPT ###

#Install gnome desktop environment
#tasksel install desktop gnome-desktop

apt update
apt upgrade

apt install xserver-xorg xserver-xorg-core xfonts-base xinit --no-install-recommends

apt install libgl1-mesa-dri x11-xserver-utils gnome-session gnome-shell gnome-terminal gnome-control-center nautilus gnome-icon-theme --no-install-recommends

apt install gdm3 --no-install-recommends

#apt install network-manager-openvpn-gnome

# Install the build essentials
tasksel install laptop
apt install curl build-essential git
apt install sudo

#Set graphical at start 
#systemctl set-default graphical.targetapt

#Install the theme
apt install gnome-tweaks
apt install gnome-shell-extensions

apt install breeze-cursor-theme arc-theme materia-gtk-theme papirus-icon-theme

git clone https://github.com/clemlal/backgrounds.git /root/etc/backgrounds 
mkdir /usr/share/backgrounds/custom
mv /root/etc/backgrounds/*.jpg /usr/share/backgrounds/custom

#Adding deb packages
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61

#Update
apt update

#Install my favorite programs

apt install audacity

apt install firefox-esr

apt install thunderbird

apt install timeshift

apt install vlc

apt install uget

apt install transmission

apt install gedit

apt install virt-manager

apt install gnome-disk-utility

apt install opam 

apt install julia

apt install texlive

apt install balena-etcher-electron

apt install gimp

apt install libreoffice

apt install obs-studio

apt install evince

apt install eog

apt install baobab

apt install kdenlive kdenlive-data

apt install ardour ardour-data ardour-video-timeline

apt install calf-plugins

#Import Gnome Preferences

#Import dotfiles

#ST

#VIM
