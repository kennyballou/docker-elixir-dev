# DOCKER-VERSION 1.9.1
FROM kennyballou/docker-elixir:1.2.5
MAINTAINER kballou@devnulllabs.io

RUN apk update && apk add \
    autoconf \
    gcc \
    m4 \
    make \
    musl-dev \
    perl
