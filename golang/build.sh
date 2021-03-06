#!/bin/sh
set -e

VERSION="0.2.0"

DOCKER_REPO="zhaochy/golang-base"

docker build -t ${DOCKER_REPO}:${VERSION} .

docker push ${DOCKER_REPO}:${VERSION}

