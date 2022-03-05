#!/bin/sh

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

VERSION="0.1.0"

DOCKER_REPO="zhaochy/golang-ci"

docker build -t ${DOCKER_REPO}:${VERSION} .

docker push ${DOCKER_REPO}:${VERSION}


