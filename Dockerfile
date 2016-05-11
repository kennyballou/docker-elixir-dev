# DOCKER-VERSION 1.9.1
FROM kennyballou/docker-erlang-dev:latest
MAINTAINER kballou@devnulllabs.io

ENV LANG="en_US.UTF-8"
ENV ELIXIR_VERSION=1.2.5

RUN apk update && apk add \
    curl

RUN set -xe \
    && ELIXIR_SRC_URL="https://github.com/elixir-lang/elixir/archive/v$ELIXIR_VERSION.tar.gz" \
    && curl -fSL "$ELIXIR_SRC_URL" -o elixir.tar.gz \
    && mkdir -p /usr/src/elixir-src \
    && tar -zxf elixir.tar.gz -C /usr/src/elixir-src --strip-components=1 \
    && cd /usr/src/elixir-src \
    && make install \
    && rm -f elixir.tar.gz \
    && rm -rf /usr/src/elixir-src

RUN set -xe \
    && mix local.hex --force \
    && mix hex.info

RUN apk del \
    bash \
    curl \
    unixodbc-dev

CMD ["iex"]
