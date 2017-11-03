#!/bin/bash
set -e

VERS=1.6.1
REGISTRY=quay.io/casey_callendrello
IMAGE=nfbpf_compile

if [ ! -d iptables ]; then
    git clone git://git.netfilter.org/iptables
fi

git -C iptables checkout v$VERS

docker build -t $REGISTRY/$IMAGE:build . -f Dockerfile.build

docker create --name extract $REGISTRY/$IMAGE:build
docker cp extract:/tmp/iptables/utils/nfbpf_compile ./nfbpf_compile
docker rm -f extract

docker build --no-cache -t $REGISTRY/$IMAGE:v$VERS .
