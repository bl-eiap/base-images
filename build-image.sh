#!/bin/bash

SEMANTIC_RELEASE_DIR=semantic-release
docker build -f ${SEMANTIC_RELEASE_DIR}/Dockerfile -t ${SEMANTIC_RELEASE_DIR} ${SEMANTIC_RELEASE_DIR}

DOCKER_COMPOSE_DIR=docker-compose
docker build -f ${DOCKER_COMPOSE_DIR}/Dockerfile -t ${DOCKER_COMPOSE_DIR} ${DOCKER_COMPOSE_DIR}