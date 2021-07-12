#!/bin/bash

sudo -E sh 07_stop_definode.sh

BACKUP_WALLET_NAME=$(date +%F)

cp $DEFI_HOME"/defichain/wallet.dat" $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"
echo ""
echo ""
echo "Please Check your backup at" $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"
echo ""
echo "You have to start the node with '4 Run DeFi node'"
echo ""
