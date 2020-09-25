#!/bin/bash

DIR_NAME=${1}
TAG=${2}
CONTEXT=${DIR_NAME}
IMAGE_NAME=${DIR_NAME}-base

if [[ -z ${DIR_NAME} ]]; then
    echo "Error - missing input directory"
    exit 1
fi

if [[ -z ${TAG} ]]; then
    echo "Warning - missing input tag. Default to 1.0.0"
    TAG=1.0.0
fi

docker rmi eiap/${IMAGE_NAME}:${TAG} || true
docker rmi ${IMAGE_NAME}:latest || true

docker build -f ${DIR_NAME}/Dockerfile -t ${IMAGE_NAME} ${CONTEXT} --no-cache
docker tag ${IMAGE_NAME} eiap/${IMAGE_NAME}:${TAG}
docker push eiap/${IMAGE_NAME}:${TAG}