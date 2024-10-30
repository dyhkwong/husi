#!/bin/bash
set -e

[[ -e "inited" ]] && exit 0

# Install gomobile
CGO_ENABLED=0 go install -v -trimpath -ldflags="-w -s" golang.org/x/mobile/cmd/gobind@v0.0.0-20241108191957-fa514ef75a0f
CGO_ENABLED=0 go install -v -trimpath -ldflags="-w -s" golang.org/x/mobile/cmd/gomobile@v0.0.0-20241108191957-fa514ef75a0f

gomobile init
touch inited
