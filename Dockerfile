# DOCKER-VERSION 1.9.1
FROM kennyballou/docker-elixir:1.3.1
MAINTAINER kballou@devnulllabs.io

RUN apk update && apk add \
    autoconf \
    gcc \
    git \
    m4 \
    make \
    musl-dev \
    perl
