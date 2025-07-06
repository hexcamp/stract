#! /bin/sh

docker rm -f stract-backend

docker run \
  -it \
  -p 3000:3000 \
  -p 3001:3001 \
  -p 3011:3011 \
  -v ./test-fs/config:/config \
  -v ./test-fs/data:/data \
  --name stract-backend \
  ghcr.io/hexcamp/stract/stract-multi
