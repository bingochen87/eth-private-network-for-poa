echo "$password" > /root/.accountpassword
echo "$privatekey" > /root/.privatekey

geth --datadir /root/data init /root/genesis.json
sleep 3

geth --datadir /root/data --nousb account import --password /root/.accountpassword  /root/.privatekey
sleep 3

geth --datadir /root/data --nousb --bootnodes "enode://$bootnodeId@$bootnodeIp:$bootnodePort" --networkid 6660001 \
  --http.port 8545 --http --http.addr "0.0.0.0"  --http.api "eth,web3,net,admin,debug,db" --http.corsdomain "*" \
  --verbosity 4  --syncmode="full" --allow-insecure-unlock "$1" "$2"
