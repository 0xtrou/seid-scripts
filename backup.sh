#!/usr/bin/bash

cp -r ~/.sei/config/priv_validator_key.json ~/backups
cp -r ~/.sei/data/priv_validator_state.json ~/backups
cp -r ~/.sei/config/config.toml ~/backups
cp -r ~/.sei/config/app.toml ~/backups
cp ~/genesis.json ~/backups