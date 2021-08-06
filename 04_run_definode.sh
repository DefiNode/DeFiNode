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
	FOLDER=$DEFI_HOME"/defichain"
	docker run -d --restart always --name defi_node -p 8554:8554 -p 5000:5000 -p 5001:5001 -v "$FOLDER:/root/.defi" defi_chain defid -maxmempool=64 -dbcache=128 -rpcallowip=172.17.0.0/16 -rpcbind=0.0.0.0 -rpcuser='definode_user' -rpcpassword='definode_pw'
	docker run -d --restart always --network=container:defi_node --name defi_wallet -e RPC_HOST=127.0.0.1:8554 -e RPC_AUTH='definode_user:definode_pw' defi_wallet

	cd $DEFI_HOME"/desktop"
	cp ./defiWalletShortcut.desktop /home/pi/Desktop

	echo ""
	echo "***************************************************************************"
	echo "To disply the DeFi Wallet, activate desktop shortcut 'DeFi Wallet'"
	echo "***************************************************************************"
	echo ""
fi
