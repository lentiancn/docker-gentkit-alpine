#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-images/blob/main/LICENSE
#

#
# Stage 1 : Builder
#
ARG DEBIAN_TAG="unknown"
FROM debian:${DEBIAN_TAG} AS builder

#
# Optimize system
#
RUN set -eu && \
#    # Update package index without caching \
#    apk update --no-cache && \
#    # Install timezone data \
#    apk add --no-cache tzdata && \
    # Clean up cache files and unnecessary documentation to reduce image size \
#    rm -rf /var/cache/apk/* \
#        /tmp/* \
#        /var/tmp/* \
#        /root/.cache \
#        /usr/share/man \
#        /usr/share/doc \
#        /usr/share/info && \
    # Reset welcome message \
    DEBIAN_VERSION=$(grep VERSION_ID /etc/os-release | cut -d'=' -f2) && \
    echo -e "\
Welcome to Debian Linux ${DEBIAN_VERSION} on Docker !" > /etc/motd

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
