FROM alpine:latest

RUN set -eux; \
    apk update --no-cache; \
    apk upgrade --no-cache; \
    rm -rf /tmp/* /var/tmp/* /root/.cache

