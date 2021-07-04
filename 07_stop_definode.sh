#!/bin/bash

docker stop defi_wallet
docker rm defi_wallet
docker stop defi_node
docker rm defi_node

rm /home/pi/Desktop/defiWalletShortcut.desktop
