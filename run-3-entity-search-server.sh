#! /bin/sh

docker rm -f stract-entity-search-server

docker run \
  -it \
  --rm \
  --net=host \
  -p 3009:3009 \
  -p 3010:3010 \
  -v ./test-fs/configs:/configs \
  -v ./data:/data \
  --name stract-entity-search-server \
  ghcr.io/hexcamp/stract/stract-backend \
  entity-search-server configs/entity_search_server.toml

