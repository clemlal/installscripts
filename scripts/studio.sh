#!/bin/bash

#Adding deb packages
sudo apt-get install apt-transport-https gpgv
sudo dpkg --purge kxstudio-repos-gcc5
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_10.0.3_all.deb
sudo dpkg -i kxstudio-repos_10.0.3_all.deb

#Update
sudo apt update

#Install my favorite programs

sudo apt install audacity

sudo apt install gimp

sudo apt install obs-studio

sudo apt install kdenlive kdenlive-data kde-runtime kde-style-breeze kde-style-breeze-qt4

sudo apt install jackd jackd2 qjackctl pulseaudio-module-jack

sudo apt install ardour ardour-data ardour-video-timeline

sudo apt install calf-plugins

sudo apt install guitarix guitarix-lv2

sudo apt install helm

sudo apt install zynaddsubfx

sudo apt install mixxx

sudo apt install geonkick

sudo apt install bshapr
