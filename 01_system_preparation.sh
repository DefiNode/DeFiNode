#!/bin/bash

sudo apt-get update && sudo apt-get upgrade
mkdir docker
cd docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi

wget http://ftp.de.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_armhf.deb
sudo dpkg -i libseccomp2_2.5.1-1_armhf.deb

cd /home/pi/definode/desktop
sudo  cp ./defiChainLogo1.png /usr/share/pixmaps
sudo  cp ./defiChainLogo3.png /usr/share/pixmaps

cp defiNodeMenuShortcut.desktop /home/pi/Desktop

sudo reboot