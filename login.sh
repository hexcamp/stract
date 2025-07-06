#! /bin/bash

. .env
export CR_PAT
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

