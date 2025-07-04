#! /bin/bash

./target/debug/stract centrality harmonic ./data/webgraph ./data/centrality
./target/debug/stract centrality approx-harmonic ./data/webgraph ./data/centrality_page
./target/debug/stract indexer search ./configs/indexer/create.toml
