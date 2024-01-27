#!/usr/bin/env bash

PRIMARY_ENDPOINT=$1
if [ -z "$PRIMARY_ENDPOINT" ]; then
  echo "PRIMARY_ENDPOINT is required"
  exit 1
fi

SELF=$(cat ~/.sei/config/node_key.json |jq -r .id)

curl "$PRIMARY_ENDPOINT"/net_info |jq -r '.peers[] | .url' |sed -e 's#mconn://##'|grep -v "$SELF"  > PEERS
PERSISTENT_PEERS=$(paste -s -d ',' PEERS)
echo $PERSISTENT_PEERS

sed -i.bak -e "s|^persistent-peers *=.*|persistent-peers = \"$PERSISTENT_PEERS\"|" ~/.sei/config/config.toml
