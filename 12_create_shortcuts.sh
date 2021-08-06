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
	cd $DEFI_HOME"/desktop"
	cp ./defiChainLogo1.png /usr/share/pixmaps
	cp ./defiChainLogo3.png /usr/share/pixmaps
	cp ./defiNodeMenuShortcut.desktop /home/pi/Desktop
	cp ./defiWalletShortcut.desktop /home/pi/Desktop

	cd $DEFI_HOME"/util"
	cp ./startMainMenu.sh /home/pi
fi
