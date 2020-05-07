#!/bin/bash

#use it on a freshly installed ubunter server with user "user"

sudo sed -i -e '$a\user ALL=(ALL) NOPASSWD:ALL' /etc/sudoers

sudo apt-add-repository universe && sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install xorg openbox pulseaudio alsa-utils menu libglib2.0-bin python-xdg at-spi2-core libglib2.0-bin dbus-x11 git dialog unzip xmlstarlet --no-install-recommends -y

mkdir ~/.config && mkdir ~/.config/openbox && echo 'gnome-terminal --full-screen --hide-menubar -- emulationstation' >> ~/.config/openbox/autostart

echo 'exec openbox-session' >> ~/.xsession

echo 'if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then'  >> ~/.bash_profile && sed -i '$ a\  startx -- -nocursor >/dev/null 2>&1' ~/.bash_profile && sed -i '$ a\fi' ~/.bash_profile

sudo mkdir /etc/systemd/system/getty@tty1.service.d && sudo sh -c 'echo [Service] >> /etc/systemd/system/getty@tty1.service.d/override.conf' && sudo sed -i '$ a\ExecStart=' /etc/systemd/system/getty@tty1.service.d/override.conf && sudo sed -i '$ a\ExecStart=-/sbin/agetty --skip-login --noissue --autologin user %I $TERM' /etc/systemd/system/getty@tty1.service.d/override.conf && sudo sed -i '$ a\Type=idle' /etc/systemd/system/getty@tty1.service.d/override.conf

git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git && sudo RetroPie-Setup/retropie_setup.sh

