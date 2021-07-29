sudo apt-get update -y
sudo apt-get upgrade -ys
mkdir docker
cd docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi

wget http://ftp.de.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_armhf.deb
sudo dpkg -i libseccomp2_2.5.1-1_armhf.deb

cd ..

sudo curl -L https://raw.githubusercontent.com/DeFiCh/app/master/typings/snapshot.ts -O
ADDRESS="$(cat snapshot.ts)| sed ':M;N;$!bM;s#\n# #g'"
ADDRESS=$(echo $ADDRESS | sed "s|.*SNAPSHOT_EU\(.*\)SNAPSHOT_INDEX.*|\\1|"| awk -F\' '{print $2}')
INDEX=$(grep "SNAPSHOT_INDEX" snapshot.ts | awk -F\' '{print $2}')
sudo rm snapshot.ts
sudo curl -L $ADDRESS$INDEX > index.txt
SNAPSHOT=$(tail -n 1 index.txt | head -n 1)
sudo rm index.txt
mkdir defichain
cd defichain
sudo curl -L $ADDRESS$SNAPSHOT > snapshot.zip
sudo unzip snapshot.zip

cd ..

cd images/defi_chain
docker build . -t defi_chain | while read line ; do echo "$(date)| $line"; done;
cd ../defi_wallet
docker build . -t defi_wallet | while read line ; do echo "$(date)| $line"; done;

cd ../../

FOLDER=$(dirname "$(realpath $0)")"/defichain"
docker run -d --restart always --name defi_node -p 8554:8554 -p 5000:5000 -p 5001:5001 -v "$FOLDER:/root/.defi" defi_chain defid -maxmempool=64 -dbcache=128 -rpcallowip=172.17.0.0/16 -rpcbind=0.0.0.0 -rpcuser='definode_user' -rpcpassword='definode_pw'
docker run -d --restart always --network=container:defi_node --name defi_wallet -e RPC_HOST=127.0.0.1:8554 -e RPC_AUTH='definode_user:definode_pw' defi_wallet
echo Please open your browser http://localhost:5000
