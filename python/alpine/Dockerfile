#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-images/blob/main/LICENSE
#

#
# Stage 1 : Builder
#
ARG PYTHON_TAG
FROM python:${PYTHON_TAG} AS builder

#
# Initialization
#
RUN set -eux && \
    apk update && \
    apk upgrade --no-cache && \
    rm -rf /var/cache/apk/* \
        /tmp/* \
        /var/tmp/* \
        ~/.cache/* \
        /usr/share/doc \
        /usr/share/man \
        /usr/share/locale

#
# Stage 2 : Production
#
FROM scratch AS production

#
# Copy resources
#
COPY --from=builder / /

#
# Set the working directory to /root for subsequent instructions
#
WORKDIR /root

#
# Set the default command to execute when running the image
#
CMD ["/bin/sh"]