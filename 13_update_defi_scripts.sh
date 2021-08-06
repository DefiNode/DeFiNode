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
	if [ -d $DEFI_HOME"/.temp" ]; then
		rm -r $DEFI_HOME"/.temp"
	fi
	mkdir $DEFI_HOME"/.temp"
	cd $DEFI_HOME"/.temp"
	git clone http://github.com/definode/definode
	cd definode
	cp -p ./*.sh $DEFI_HOME
	

	cd $DEFI_HOME
	sudo chown pi ./*.sh
	sudo rm -r .temp
fi

echo ""
echo ""
echo "***************************************************************************"
echo "* All DeFi scripts has been updated from the github."
echo "***************************************************************************"
echo""
