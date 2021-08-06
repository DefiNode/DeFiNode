#!/bin/bash

docker stop defi_wallet
docker rm defi_wallet
docker stop defi_node
docker rm defi_node

## remove desktop shortcut
cd /home/pi/Desktop
if [ -f "defiWalletShortcut.desktop" ]; then
	rm ./defiWalletShortcut.desktop
fi

echo ""
echo "***************************************************************************"
echo "DeFi Node has been stopped"
echo "***************************************************************************"
echo ""
echo ""
