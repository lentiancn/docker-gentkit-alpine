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
ARG ROOTFS_FILE="unknown"

#
# Extract files to the root directory
#
ADD rootfs/${ROOTFS_FILE} /

#
# Optimize system
#
RUN set -eu && \
    # Update package index without caching \
    apk update --no-cache && \
    # Install timezone data \
    apk add --no-cache tzdata && \
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
