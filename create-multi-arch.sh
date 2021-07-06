#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

REGISTRY='quay.io/rohan_shinde_98'
image='multi-arch-travis'

AMEND=""
AMEND+=" --amend ${REGISTRY}/${image}:x86_64";
AMEND+=" --amend ${REGISTRY}/${image}:ppc64le";
AMEND+=" --amend ${REGISTRY}/${image}:s390x";

docker manifest create quay.io/rohan_shinde_98/multi-arch-travis:latest ${AMEND}

docker manifest inspect quay.io/rohan_shinde_98/multi-arch-travis

