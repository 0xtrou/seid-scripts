#!/usr/bin/env bash

chain_id=$1
if [ -z "$chain_id" ]; then
  echo "chain_id is required"
  exit 1
fi

echo $chain_id

seid init seitrace --chain-id $chain_id -o