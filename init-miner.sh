echo "$password" > /root/.accountpassword
echo "$privatekey" > /root/.privatekey

geth --datadir /root/data init /root/genesis.json
sleep 3

geth --datadir /root/data --nousb account import --password /root/.accountpassword  /root/.privatekey
sleep 3

geth --datadir /root/data --nousb --bootnodes "enode://$bootnodeId@$bootnodeIp:$bootnodePort" --networkid 6660001 \
  --verbosity 4 --syncmode=full --mine --gasprice "0" \
  --rpc --rpcapi "eth,web3,personal,net,miner,admin,debug,db" --rpcaddr "0.0.0.0" --rpccorsdomain "*"  \
  --etherbase "$address" --unlock "$address" --password /root/.accountpassword "$1" "$2" --allow-insecure-unlock
