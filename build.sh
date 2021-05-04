#!/bin/bash

ARCH=$(uname -m)

LD_DEBUG=libs docker build -t container/$ARCH -f ./$ARCH/Dockerfile .
docker tag container/$ARCH quay.io/rpsene/multi-arch-travis:$ARCH
docker login quay.io -u ${{ secrets.ROBOT_USER }} -p $ {{ secrets.ROBOT_TOKEN }}
docker push quay.io/rpsene/multi-arch-travis:$ARCH
