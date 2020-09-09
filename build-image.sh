#!/bin/bash

SEMANTIC_RELEASE_DIR=semantic-release
docker build -f ${SEMANTIC_RELEASE_DIR}/Dockerfile -t ${SEMANTIC_RELEASE_DIR} ${SEMANTIC_RELEASE_DIR}
docker tag ${SEMANTIC_RELEASE_DIR} eiap/${SEMANTIC_RELEASE_DIR}:1.0.0
docker push eiap/${SEMANTIC_RELEASE_DIR}:1.0.0

DOCKER_COMPOSE_DIR=docker-compose
docker build -f ${DOCKER_COMPOSE_DIR}/Dockerfile -t ${DOCKER_COMPOSE_DIR} ${DOCKER_COMPOSE_DIR}
docker tag ${DOCKER_COMPOSE_DIR} eiap/${DOCKER_COMPOSE_DIR}:1.0.0
docker push eiap/${DOCKER_COMPOSE_DIR}:1.0.0