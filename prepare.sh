#!/usr/bin/bash

chain_id=$1
if [ -z "$chain_id" ]; then
  echo "chain_id is required"
  exit 1
fi

moniker=$2
if [ -z "$moniker" ]; then
  echo "moniker is required"
  exit 1
fi

cosmos_rpc_endpoint=$3
if [ -z "$cosmos_rpc_endpoint" ]; then
  echo "cosmos_rpc_endpoint is required"
  exit 1
fi

bash ./seid-scripts/backup.sh
bash ./seid-scripts/init.sh $chain_id $moniker
bash ./seid-scripts/restore.sh
bash ./seid-scripts/get_peers.sh $cosmos_rpc_endpoint
bash ./seid-scripts/get_height.sh $cosmos_rpc_endpoint
