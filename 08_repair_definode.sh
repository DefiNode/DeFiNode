#!/bin/bash

docker stop defi_wallet
docker rm defi_wallet
docker stop defi_node
docker rm defi_node

cd defichain
sudo rm snapshot.zip
sudo rm -r anchors
sudo rm -r backup
sudo rm -r blocks
sudo rm -r burn
sudo rm -r chainstate
sudo rm -r enhancedcs
sudo rm -r history
sudo rm -r indexes
sudo rm -r spv

sudo curl -L https://raw.githubusercontent.com/DeFiCh/app/master/typings/snapshot.ts -O
ADDRESS="$(cat snapshot.ts)| sed ':M;N;$!bM;s#\n# #g'"
ADDRESS=$(echo $ADDRESS | sed "s|.*SNAPSHOT_EU\(.*\)SNAPSHOT_INDEX.*|\\1|"| awk -F\' '{print $2}')
INDEX=$(grep "SNAPSHOT_INDEX" snapshot.ts | awk -F\' '{print $2}')
sudo rm snapshot.ts
sudo curl -L $ADDRESS$INDEX > index.txt
SNAPSHOT=$(tail -n 2 index.txt | head -n 1)
echo $SNAPSHOT
sudo rm index.txt

sudo curl -L $ADDRESS$SNAPSHOT > snapshot.zip
sudo unzip snapshot.zip

cd ..
FOLDER=$(dirname "$(realpath $0)")"/defichain"
docker run -d --restart always --name defi_node -p 8554:8554 -p 5000:5000 -p 5001:5001 -v "$FOLDER:/root/.defi" defi_chain defid -maxmempool=64 -dbcache=128 -rpcallowip=172.17.0.0/16 -rpcbind=0.0.0.0 -rpcuser='definode_user' -rpcpassword='definode_pw'
docker run -d --restart always --network=container:defi_node --name defi_wallet -e RPC_HOST=127.0.0.1:8554 -e RPC_AUTH='definode_user:definode_pw' defi_wallet
echo Please open your browser http://localhost:5000

hold=' '
echo "Press 'SPACE' to return to menu"
tty_state=$(stty -g)
stty -icanon
until [ -z "${hold#$in}" ] ; do
    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
done
stty "$tty_state"

sudo sh 00_definode.sh