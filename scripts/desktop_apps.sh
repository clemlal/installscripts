#!/bin/bash

#Adding deb packages
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61

sudo apt-get install apt-transport-https gpgv
sudo dpkg --purge kxstudio-repos-gcc5
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_10.0.3_all.deb
sudo dpkg -i kxstudio-repos_10.0.3_all.deb

#Update
sudo apt update

#Install my favorite programs

sudo apt install audacity

sudo apt install firefox-esr

sudo apt install thunderbird

sudo apt install timeshift

sudo apt install vlc

sudo apt install uget

sudo apt install transmission

sudo apt install gedit

sudo apt install virt-manager

sudo apt install gnome-disk-utility

sudo apt install opam

sudo apt install julia

sudo apt install texlive

sudo apt install balena-etcher-electron

sudo apt install gimp

sudo apt install libreoffice

sudo apt install obs-studio

sudo apt install evince

sudo apt install eog

sudo apt install baobab

sudo apt install kdenlive kdenlive-data kde-runtime kde-style-breeze kde-style-breeze-qt4

sudo apt install jackd jackd2 qjackctl pulseaudio-module-jack

sudo apt install ardour ardour-data ardour-video-timeline

sudo apt install calf-plugins

sudo apt install guitarix guitarix-lv2

sudo apt install helm

sudo apt install zynaddsubfx

sudo apt install mixxx

sudo apt install filezilla
