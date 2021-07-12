#!/bin/bash

## Setup DeFiNode home directory
STARTUP_DIR=$(dirname "$(realpath $0)")""
echo "export DEFI_HOME=$STARTUP_DIR" > /etc/profile.d/defi-home.sh

## setup wallet backup directory
mkdir backup

## setup docker environment
sudo apt-get update -y && sudo apt-get upgrade -y
mkdir docker
cd docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi

wget http://ftp.de.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_armhf.deb
sudo dpkg -i libseccomp2_2.5.1-1_armhf.deb

## Setup Shortcuts
cd ../desktop
cp ./defiChainLogo1.png /usr/share/pixmaps
cp ./defiChainLogo3.png /usr/share/pixmaps
cp ./defiNodeMenuShortcut.desktop /home/pi/Desktop
cd ../util
cp ./startMainMenu.sh /home/pi

sudo reboot
