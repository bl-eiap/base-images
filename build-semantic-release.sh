#!/bin/bash
TAG=${1}
SEMANTIC_RELEASE=semantic-release

if [[ -z ${TAG} ]]; then
    echo "Warning - missing input tag. Default to 1.0.0"
    TAG=1.0.0
fi

docker rmi eiap/${SEMANTIC_RELEASE}:${TAG} || true
docker rmi ${SEMANTIC_RELEASE}:latest || true

docker build -f ${SEMANTIC_RELEASE}/Dockerfile -t ${SEMANTIC_RELEASE} ${SEMANTIC_RELEASE} --no-cache
docker tag ${SEMANTIC_RELEASE} eiap/${SEMANTIC_RELEASE}:${TAG}
docker push eiap/${SEMANTIC_RELEASE}:${TAG}