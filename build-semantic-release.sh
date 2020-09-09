#!/bin/bash

TAG=${1}
DOCKER_COMPOSE=docker-compose

if [[ -z ${TAG} ]]; then
    echo "Warning - missing input tag. Default to 1.0.0"
    TAG=1.0.0
fi

docker rmi ${SEMANTIC_RELEASE}:latest || true
docker rmi eiap/${SEMANTIC_RELEASE}:${TAG} || true

docker build -f ${DOCKER_COMPOSE}/Dockerfile -t ${DOCKER_COMPOSE} ${DOCKER_COMPOSE} --no-cache
docker tag ${DOCKER_COMPOSE} eiap/${DOCKER_COMPOSE}:${TAG}
docker push eiap/${DOCKER_COMPOSE}:${TAG}