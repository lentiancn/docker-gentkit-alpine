FROM alpine:latest

RUN set -eux && \
    apk update --no-cache && \
    apk upgrade --no-cache && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache && \
    apk add --no-cache bash

WORKDIR /root
