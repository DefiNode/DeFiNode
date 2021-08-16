#!/bin/bash

if [ ! -f $DEFI_HOME"/defichain/wallet.dat" ]; then
	whiptail --msgbox --title "!!!!!DeFi Wallet Missing!!!!!" "Please copy the 'wallet.dat' file to the DeFiChain directory with the following command:\n\nsudo cp <path>/<wallet-file> /home/pi/DeFiNode/defichain/wallet.dat \n\nThen activate the 'DeFi Node Main Menu' on the desktop. For starting the node, select menu item 04. Thats it :-)" 13 75

else
	cd $DEFI_HOME
	sudo -E sh 00_definode.sh
fi
