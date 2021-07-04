#!/bin/bash

start=$(date +%s)

sudo curl -L https://raw.githubusercontent.com/DeFiCh/app/master/typings/snapshot.ts -O
ADDRESS="$(cat snapshot.ts)| sed ':M;N;$!bM;s#\n# #g'"
ADDRESS=$(echo $ADDRESS | sed "s|.*SNAPSHOT_EU\(.*\)SNAPSHOT_INDEX.*|\\1|"| awk -F\' '{print $2}')
INDEX=$(grep "SNAPSHOT_INDEX" snapshot.ts | awk -F\' '{print $2}')
sudo rm snapshot.ts
sudo curl -L $ADDRESS$INDEX > index.txt
SNAPSHOT=$(tail -n 1 index.txt)
sudo rm index.txt
mkdir defichain
cd defichain
sudo curl -L $ADDRESS$SNAPSHOT > snapshot.zip
sudo unzip snapshot.zip

end=$(date +%s)

echo "elapsed time:" $((end-$start)) " seconds"

hold=' '
echo "Press 'SPACE' to return to menu"
tty_state=$(stty -g)
stty -icanon
until [ -z "${hold#$in}" ] ; do
    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
done
stty "$tty_state"

cd ..
sudo sh 00_definode.sh

