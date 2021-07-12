#!/bin/bash

docker stop defi_wallet
docker rm defi_wallet
docker stop defi_node
docker rm defi_node

echo definode stopped

## remove desktop shortcut
cd /home/pi/Desktop
rm ./defiWalletShortcut.desktop
