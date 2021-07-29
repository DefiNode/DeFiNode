#!/bin/bash

#sudo -E sh 07_stop_definode.sh

BACKUP_WALLET_NAME=$(date +%F)

mkdir $DEFI_HOME"/backup"

cp $DEFI_HOME"/defichain/wallet.dat" $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"
sudo chown pi $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"

echo ""
echo ""
echo "********************************************************************************"
echo "* Please Check your backup at" $DEFI_HOME"/backup/"$BACKUP_WALLET_NAME"_wallet.dat"
echo "*"
#echo "* The node must be started again with '4 Run DeFi node'" 
echo "********************************************************************************"
