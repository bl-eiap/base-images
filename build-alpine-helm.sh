#!/bin/bash

TAG=${1}
IMAGE=helm

if [[ -z ${TAG} ]]; then
    echo "Warning - missing input tag. Default to 1.0.0"
    TAG=1.0.0
fi

docker rmi ${IMAGE}:latest || true
docker rmi eiap/${IMAGE}:${TAG} || true

docker build -f ${IMAGE}/Dockerfile -t ${IMAGE} ${IMAGE} --no-cache
docker tag ${IMAGE} eiap/${IMAGE}:${TAG}
docker push eiap/${IMAGE}:${TAG}