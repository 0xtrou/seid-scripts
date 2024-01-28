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

seid start --moniker $moniker --chain-id $chain_id # --tracing  --log_level trace