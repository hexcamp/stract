#! /bin/bash

set -x

rm -rf data/webgraph
rm -rf data/centrality
rm -rf data/centrality_page
rm -rf data/index

./target/debug/stract webgraph create ./configs/webgraph/create.toml

