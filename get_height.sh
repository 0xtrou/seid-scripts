#!/usr/bin/env bash

# Example: set trust height and hash to be the block height 10,000 earlier
PRIMARY_ENDPOINT=$1
if [ -z "$PRIMARY_ENDPOINT" ]; then
  echo "PRIMARY_ENDPOINT is required"
  exit 1
fi

TRUST_HEIGHT_DELTA=10000
LATEST_HEIGHT=$(curl -s "$PRIMARY_ENDPOINT"/block | jq -r ".block.header.height")
if [[ "$LATEST_HEIGHT" -gt "$TRUST_HEIGHT_DELTA" ]]; then
          SYNC_BLOCK_HEIGHT=$(($LATEST_HEIGHT - $TRUST_HEIGHT_DELTA))
  else
            SYNC_BLOCK_HEIGHT=$LATEST_HEIGHT
fi
# Get trust hash
SYNC_BLOCK_HASH=$(curl -s "$PRIMARY_ENDPOINT/block?height=$SYNC_BLOCK_HEIGHT" | jq -r ".block_id.hash")

echo $SYNC_BLOCK_HASH
echo $SYNC_BLOCK_HEIGHT

# Override configs
sed -i.bak -e "s|^trust-height *=.*|trust-height = $SYNC_BLOCK_HEIGHT|" ~/.sei/config/config.toml
sed -i.bak -e "s|^trust-hash *=.*|trust-hash = \"$SYNC_BLOCK_HASH\"|" ~/.sei/config/config.toml