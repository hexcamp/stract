#! /bin/sh

docker rm -f stract-webgraph

docker run \
  -it \
  --rm \
  --net=host \
  -p 3003:3003 \
  -p 3007:3007 \
  -v ./test-fs/configs:/configs \
  -v ./data:/data \
  --name stract-webgraph \
  ghcr.io/hexcamp/stract/stract-backend \
  webgraph server configs/webgraph/server.toml

