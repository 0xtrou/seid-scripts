#!/usr/bin/bash

# Restore previously backed up files
cp ~/backups/node_key.json ~/.sei/config/node_key.json
cp ~/backups/priv_validator_key.json ~/.sei/config/priv_validator_key.json
cp ~/backups/genesis.json ~/.sei/config/genesis.json
