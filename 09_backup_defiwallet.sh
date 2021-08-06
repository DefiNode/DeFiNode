#!/bin/bash

BACKUP_WALLET_NAME=$(date +%F)

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
	echo ""
else
	if [ ! -d $DEFI_HOME"/backup" ]; then
		mkdir $DEFI_HOME"/backup"
	fi
	cp $DEFI_HOME"/defichain/wallet.dat" $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"
	sudo chown pi $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"

	echo ""
	echo ""
	echo "***************************************************************************"
	echo "* Please Check your backup at" $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"
	echo "***************************************************************************"
	echo ""
	echo ""
fi
