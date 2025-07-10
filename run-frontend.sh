#! /bin/sh

docker rm -f stract-frontend

docker run \
  -it \
  --rm \
  --name stract-frontend \
  --entrypoint /bin/sh \
  ghcr.io/hexcamp/stract/stract-frontend


