FROM golang:1.17.5

WORKDIR /root
RUN apt-get update -y
RUN apt-get install nodejs npm -y

RUN npm install -g renovate@19.61.6

# nstall docker client (https://github.com/Cethy/alpine-docker-client)

ARG DOCKER_CLI_VERSION="19.03.2"
ENV DOWNLOAD_URL="https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_CLI_VERSION.tgz"

RUN set -ex; mkdir -p /tmp/download \
    && curl -L $DOWNLOAD_URL | tar -xz -C /tmp/download \
    && mv /tmp/download/docker/docker /usr/local/bin/ \
    && rm -rf /tmp/download

COPY ./.npmrc /root/.npmrc

RUN node -v
RUN npm -v
RUN docker -v
RUN go version

