#!/usr/bin/bash

# Restore previously backed up files
cp ~/backups/priv_validator_state.json ~/.sei/data/priv_validator_state.json
cp ~/backups/priv_validator_key.json ~/.sei/config/priv_validator_key.json
cp ~/backups/genesis.json ~/.sei/config/genesis.json
