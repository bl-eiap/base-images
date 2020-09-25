#!/bin/bash

DIR_NAME='docker-compose'
TAG=${1}

./build-image.sh ${DIR_NAME} ${TAG}