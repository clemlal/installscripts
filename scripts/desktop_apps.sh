#!/bin/bash

#Adding deb packages
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61

#Update
sudo apt update

#Install my favorite programs

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

sudo apt install evince

sudo apt install eog

sudo apt install baobab

sudo apt install filezilla
