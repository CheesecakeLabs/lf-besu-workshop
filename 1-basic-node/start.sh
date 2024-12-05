# !/bin/bash

dir="besu"

if [[ ! -e $dir ]]; then
  mkdir $dir
fi

docker run -p 8545:8545 --mount type=bind,source=./besu/mainnet,target=/var/lib/besu -p 30303:30303 hyperledger/besu:latest --rpc-http-enabled --data-path=/var/lib/besu
