#! /bin/sh

docker rm -f stract-frontend

docker run \
  -it \
  --rm \
  -p 3000:3000 \
  --name stract-frontend \
  ghcr.io/hexcamp/stract/stract-frontend


