#! /bin/sh

docker rm -f stract-search-server

docker run \
  -it \
  --rm \
  --net=host \
  -p 3002:3002 \
  -p 3006:3006 \
  -v ./test-fs/configs:/configs \
  -v ./data:/data \
  --name stract-search-server \
  ghcr.io/hexcamp/stract/stract-backend \
  search-server configs/search_server.toml


