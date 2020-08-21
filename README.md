Use docker compose to start a ETH(use geth v1.9.19) private network for POA with `bootnode`, `netstat` and a simple `explorer`

![netstat](https://static.hyn.space/images/poa-private-network-netstat.png)

![explorer](https://static.hyn.space/images/poa-private-network-explorer.png)

### You can use this command to generate your own `Boot Node Key`:
```sh
 bootnode -genkey boot.key 
```

### You also can use `puppeth` to generate your own `genesis` file.

### Notice:

Please don't use those addresses and private keys for production.