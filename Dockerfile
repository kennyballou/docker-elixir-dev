# DOCKER-VERSION 1.9.1
FROM kennyballou/docker-elixir:latest
MAINTAINER kballou@devnulllabs.io

ENV LANG="en_US.UTF-8"
ENV ELIXIR_VERSION=1.2.5

RUN apk update && apk add \
    autoconf \
    gcc \
    m4 \
    make \
    musl-dev \
    perl \
    postgresql-client
