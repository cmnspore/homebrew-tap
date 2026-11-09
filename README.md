# Code Mycelial Network (CMN)

A sovereign-first protocol for code distribution and evolution tracking. Domains publish signed, hash-verified packages — no central registry.

Homepage: https://cmn.dev

## Install

Choose a formula from the table and run its complete command. This third-party
tap ships prebuilt binaries for Apple Silicon and Intel macOS, and Intel Linux,
plus ARM64 Linux once a release ships it.

## Formulas

| Formula | Install command | Description |
|---|---|---|
| [hypha](Formula/hypha.rb) | `brew install cmnspore/tap/hypha` | The reference CMN client CLI — release spores, query synapses, resolve bonds, and manage your local mycelium. |
| [synapse](Formula/synapse.rb) | `brew install cmnspore/tap/synapse` | The reference CMN indexer — ingests signed manifests, indexes spores and myceliums, serves discovery queries, and syncs across instances via Nostr. |
