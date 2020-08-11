#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create travis/multi-arch-image:latest \
quay.io/rpsene/multi-arch-travis:x86_64 quay.io/rpsene/multi-arch-travis:ppc64le

docker tag travis/multi-arch-image quay.io/rpsene/multi-arch-travis:latest

docker manifest inspect travis/multi-arch-image

docker login quay.io -u "$USER" -p $TOKEN

docker images

docker manifest push quay.io/rpsene/multi-arch-travis:latest
