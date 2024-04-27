# Getting Started

## Prerequisites

1. Make sure you have installed seid https://github.com/sei-protocol/sei-chain
2. Verify `seid` is installed
```bash
seid version

# Output: 4.0.4-evm-devnet-hotfix1-2-g668a6e11
```
3. Download corresponding `genesis.json` into `~/backups` for the network you want to run, might take a look at https://github.com/sei-protocol/testnet

## Init seid first
```
seid init --chain-id <chain-id> <moniker>
```

## Quick start an rpc node

```bash
bash seid-scripts/prepare.sh <chain-id> <moniker> <cosmos-rpc-url>
```

## Running 

```bash
bash seid-scripts/start.sh <chain-id> <moniker>
```
