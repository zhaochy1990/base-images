#!/bin/sh
set -e

VERSION="0.1.0"

DOCKER_REPO="zhaochy/golang-base"

docker build -t ${DOCKER_REPO}:${VERSION} .

docker push ${DOCKER_REPO}:${VERSION}

docker tag ${DOCKER_REPO}:${VERSION} ${DOCKER_REPO}:latest

docker push ${DOCKER_REPO}

