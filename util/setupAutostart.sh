#!/bin/bash


if [ ! -d /home/pi/.config/autostart ]; then
	mkdir /home/pi/.config/autostart
fi
sudo cp ./autostart/defiAutostart.desktop /home/pi/.config/autostart
sudo cp ./autostart/check-DeFiWallet.sh /home/pi
