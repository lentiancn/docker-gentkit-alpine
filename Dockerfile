#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-alpine/blob/main/LICENSE
#

#
# The base image
#
FROM scratch AS builder

#
# Define build arguments
#
ARG ALPINE_RELEASE_FILE="unknown"

#
# Extract files to the root directory
#
ADD releases/${ALPINE_RELEASE_FILE} /

#
# Optimize system
#
RUN set -eu && \
    # Update package index without caching \
    apk update --no-cache && \
    # Clean up cache files and unnecessary documentation to reduce image size \
    rm -rf /var/cache/apk/* \
        /tmp/* \
        /var/tmp/* \
        /root/.cache \
        /usr/share/man \
        /usr/share/doc \
        /usr/share/info && \
    # Reset welcome message \
    ALPINE_VERSION=$(grep VERSION_ID /etc/os-release | cut -d'=' -f2) && \
    echo -e "\
Welcome to Alpine Linux ${ALPINE_VERSION} on Docker !" > /etc/motd

FROM scratch AS production

ARG ALPINE_IMAGE_BUILD_TIME

#
# Image metadata labels following OCI Image Format Specification
#
LABEL org.opencontainers.image.title="Alpine Linux on Docker" \
      org.opencontainers.image.description="A Docker image based on Alpine Linux." \
      org.opencontainers.image.vendor="GentKit" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/lentiancn/dockerhub-gentkit-alpine" \
      org.opencontainers.image.version="3.23.4" \
      org.opencontainers.image.created="${ALPINE_IMAGE_BUILD_TIME}"

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
