#!/bin/bash

## Setup DeFiNode home directory
sudo sh 10_init_defihome.sh

## setup docker environment
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install docker.io docker-compose rootlesskit docker-registry -y

## Setup Shortcuts
cd ../desktop
cp ./defiChainLogo1.png /usr/share/pixmaps
cp ./defiChainLogo3.png /usr/share/pixmaps
cp ./defiNodeMenuShortcut.desktop /home/pi/Desktop

cd ../util
cp ./startMainMenu.sh /home/pi
