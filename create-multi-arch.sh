#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create quay.io/rohan_shinde_98/multi-arch-travis:latest \
quay.io/rohan_shinde_98/multi-arch-travis:x86_64 quay.io/rohan_shinde_98/multi-arch-travis:ppc64le quay.io/rohan_shinde_98/multi-arch-travis:s390x

docker manifest inspect quay.io/rohan_shinde_98/multi-arch-travis

docker login quay.io -u "$ROBOT_USER" -p $ROBOT_TOKEN

docker manifest push quay.io/rohan_shinde_98/multi-arch-travis:latest
