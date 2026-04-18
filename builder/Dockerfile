#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-alpine/blob/main/LICENSE
#

#
# The base image
#
FROM scratch

#
# Define build arguments
#
ARG FS_FILE="unknown"

#
# Extract files to the root directory
#
ADD ${FS_FILE} /

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
Welcome to Alpine Linux ${ALPINE_VERSION} on Docker !" > /etc/motd && \
    # Create alpine filesystem \
    tar -czf /alpinefs.tar.gz \
        --exclude='/alpinefs.tar.gz' \
        -C / .
