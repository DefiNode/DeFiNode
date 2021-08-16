#!/bin/bash

if [ -z ${DEFI_HOME+x} ]; then
	echo ""
	echo ""
	echo "***************************************************************************"
	echo "* Your DEFI_HOME is not set!"
	echo "* Execute menu '10 Set DeFi Home'. After logging out & in again, the"
	echo "* DEFI_HOME variable should be set."
	echo "* This can be checked in the DeFi Node main menu (desktop shortcut). See"
	echo "* first menu entry (should be marked red)."
	echo "***************************************************************************"
	echo ""
else
	if [ -d /home/pi/.temp ]; then
		rm -r /home/pi/.temp
	fi
	mkdir /home/pi/.temp
	cd /home/pi/.temp
	git clone http://github.com/definode/definode
	cd definode
	cp -p -r ./* $DEFI_HOME
	
	cd $DEFI_HOME
	sudo chown -R pi ./*

	cd /home/pi
	sudo rm -r .temp
fi

echo ""
echo ""
echo "***************************************************************************"
echo "* All DeFi scripts has been updated from the GitHub."
echo "***************************************************************************"
echo""
