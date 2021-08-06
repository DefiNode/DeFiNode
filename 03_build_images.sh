#!/bin/bash

defiChainStart=$(date +%s)
cd images/defi_chain
docker build . -t defi_chain | while read line ; do echo "$(date)| $line"; done;
defiChainEnd=$(date +%s)

defiWalletStart=$(date +%s)
cd ../defi_wallet
docker build . -t defi_wallet | while read line ; do echo "$(date)| $line"; done;
defiWalletEnd=$(date +%s)

echo ""
echo ""
echo "***************************************************************************"
echo "*   Elapsed Build Time DeFi Chain:  " $((defiChainEnd-$defiChainStart)) " seconds"
echo "*   Elapsed Build Time DeFi Wallet: " $((defiWalletEnd-$defiWalletStart)) " seconds"
echo "***************************************************************************"
echo ""
echo ""

