#!/bin/bash


if [ ! -d /home/pi/.config/autostart ]; then
	mkdir /home/pi/.config/autostart
fi
cp ./autostart/defiAutostart.desktop /home/pi/.config/autostart
cp ./autostart/check-DeFiWallet.sh /home/pi
