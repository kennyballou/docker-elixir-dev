# DOCKER-VERSION 1.9.1
FROM kennyballou/docker-elixir:latest
MAINTAINER kballou@devnulllabs.io

RUN apk update && apk add \
    autoconf \
    gcc \
    m4 \
    make \
    musl-dev \
    perl
