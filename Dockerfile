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
ARG IMAGE_VERSION="unknown"
ARG ARCHITECTURE="unknown"

#
# Extract files to the root directory
#
ADD releases/${ARCHITECTURE}/alpine-minirootfs-${IMAGE_VERSION}-${ARCHITECTURE}.tar.gz /

#
# Optimize system
#
RUN set -eu && \
    # Update package index without caching
    apk update --no-cache && \
    # Upgrade all installed packages to latest versions without caching
    apk upgrade --no-cache && \
    # Clean up cache files and unnecessary documentation to reduce image size
    rm -rf /var/cache/apk/* \
        /tmp/* \
        /var/tmp/* \
        /root/.cache \
        /usr/share/man \
        /usr/share/doc \
        /usr/share/info && \
    # Reset welcome message
    ALPINE_ACTUAL_VERSION=$(grep VERSION_ID /etc/os-release | cut -d'=' -f2) && \
    echo -e "\
Welcome to Alpine Linux ${ALPINE_ACTUAL_VERSION} on Docker !" > /etc/motd

FROM scratch AS production

#
# Define build arguments for image metadata
#
ARG IMAGE_VERSION="unknown"
ARG IMAGE_BUILD_DATE="unknown"

#
# Image metadata labels following OCI Image Format Specification
#
LABEL maintainer="Len <lentiancn@126.com>" \
      description="A Docker image based on Alpine Linux." \
      org.opencontainers.image.title="Alpine Linux on Docker" \
      org.opencontainers.image.description="A Docker image based on Alpine Linux." \
      org.opencontainers.image.vendor="GentKit" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/lentiancn/dockerhub-gentkit-alpine" \
      org.opencontainers.image.version="${IMAGE_VERSION}" \
      org.opencontainers.image.created="${IMAGE_BUILD_DATE}"

#
# Copy resources
#
COPY --from=builder / /

#
# Set the working directory to /root for subsequent instructions
#
WORKDIR /root
