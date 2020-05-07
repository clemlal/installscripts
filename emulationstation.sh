#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y libsdl2-dev libboost-system-dev libboost-filesystem-dev libboost-date-time-dev libboost-locale-dev libfreeimage-dev libfreetype6-dev libeigen3-dev libcurl4-openssl-dev libasound2-dev libgl1-mesa-dev build-essential cmake git

git clone https://github.com/Aloshi/EmulationStation

cd EmulationStation
git checkout unstable
cmake .
make
sudo make install
