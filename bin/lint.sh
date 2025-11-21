#!/usr/bin/env bash

docker run --rm \
  --volume "${PWD}":/go/src \
  --workdir /go/src/ \
  golangci/golangci-lint:v2.5.0 \
  golangci-lint run "$@"