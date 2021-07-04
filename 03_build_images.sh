#!/bin/bash

defiChainStart=$(date +%s)
cd images/defi_chain
docker build . -t defi_chain | while read line ; do echo "$(date)| $line"; done;
defiChainEnd=$(date +%s)

defiWalletStart=$(date +%s)
 cd ../defi_wallet
docker build . -t defi_wallet | while read line ; do echo "$(date)| $line"; done;
defiWalletEnd=$(date +%s)

echo "elapsed build time DeFi Chain:" $((defiChainEnd-$defiChainStart)) " seconds"
echo "elapsed build time DeFi Wallet:" $((defiWalletEnd-$defiWalletStart)) " seconds"

hold=' '
echo "Press 'SPACE' to return to menu"
tty_state=$(stty -g)
stty -icanon
until [ -z "${hold#$in}" ] ; do
    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
done
stty "$tty_state"

cd ../../
sudo sh 00_definode.sh
