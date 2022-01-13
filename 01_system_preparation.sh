#!/bin/bash

## Setup DeFiNode home directory
sudo sh 10_init_defihome.sh

## setup docker environment
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install docker.io docker-compose rootlesskit docker-registry

#mkdir docker
#cd docker
#curl -fsSL https://get.docker.com -o get-docker.sh
#sudo sh get-docker.sh
#sudo usermod -aG docker pi

#wget http://ftp.de.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_armhf.deb
#sudo dpkg -i libseccomp2_2.5.1-1_armhf.deb

## Setup Shortcuts
cd ../desktop
cp ./defiChainLogo1.png /usr/share/pixmaps
cp ./defiChainLogo3.png /usr/share/pixmaps
cp ./defiNodeMenuShortcut.desktop /home/pi/Desktop

cd ../util
cp ./startMainMenu.sh /home/pi
