FOLDER=$(dirname "$(realpath $0)")"/defichain"
docker run -d --restart always --name defi_node -p 8554:8554 -p 5000:5000 -p 5001:5001 -v "$FOLDER:/root/.defi" defi_chain defid -maxmempool=64 -dbcache=128 -rpcallowip=172.17.0.0/16 -rpcbind=0.0.0.0 -rpcuser='definode_user' -rpcpassword='definode_pw'
docker run -d --restart always --network=container:defi_node --name defi_wallet -e RPC_HOST=127.0.0.1:8554 -e RPC_AUTH='definode_user:definode_pw' defi_wallet
echo Please open your browser http://localhost:5000