#!/usr/bin/env bash

docker run \
  --volume "${PWD}":/go/src \
  --workdir /go/src \
  goreleaser/goreleaser:v2.12.7 \
  build --clean --snapshot