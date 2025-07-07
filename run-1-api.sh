#! /bin/sh

docker rm -f stract-api

docker run \
  -it \
  --rm \
  --net=host \
  -p 3000:3000 \
  -p 3001:3001 \
  -p 3005:3005 \
  -p 3011:3011 \
  -v ./test-fs/configs:/configs \
  -v ./data:/data \
  --name stract-api \
  ghcr.io/hexcamp/stract/stract-backend \
  api configs/api.toml


