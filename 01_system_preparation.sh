#!/bin/bash

## Setup DeFiNode home directory
sudo sh 10_init_defihome.sh

## setup docker environment
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install docker.io docker-compose rootlesskit docker-registry -y

## Setup Shortcuts
cd ../desktop
sudo cp ./defiChainLogo1.png /usr/share/pixmaps
sudo cp ./defiChainLogo3.png /usr/share/pixmaps
sudo cp ./defiNodeMenuShortcut.desktop /home/pi/Desktop

cd ../util
sudo cp ./startMainMenu.sh /home/pi
