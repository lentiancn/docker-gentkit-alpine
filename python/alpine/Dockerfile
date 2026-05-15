#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-images/blob/main/LICENSE
#

#
# Stage 1 : Builder
#
ARG GENTKIT_ALPINE_TAG=latest
FROM gentkit/alpine:${GENTKIT_ALPINE_TAG} AS builder

#
# Define build arguments
#
ARG PYTHON_SOURCE_URL

#
# Install build dependencies
#
RUN set -eu && \
    # Update package index without caching \
    apk update --no-cache && \
    # Install specified Python version \
    apk add --no-cache \
        build-base \
        libffi-dev \
        openssl-dev \
        bzip2-dev \
        zlib-dev \
        readline-dev \
        sqlite-dev \
        wget \
        ca-certificates && \
    # Install runtime libraries (keep these for production) \
    apk add --no-cache \
        libffi \
#        libssl \
        libbz2 \
        zlib \
#        libreadline \
        sqlite-libs

#
# Download Python source tarball from remote URL
#
RUN set -eu && \
    mkdir -p /tmp/python_src && \
    wget -O /tmp/python.tgz "${PYTHON_SOURCE_URL}" && \
    tar -zxf /tmp/python.tgz -C /tmp/python_src --strip-components=1 && \
    rm /tmp/python.tgz

#
# Compile and install Python
#
RUN set -eu && \
    cd /tmp/python_src && \
    ./configure \
        --enable-optimizations \
        --enable-shared \
        --prefix=/usr \
        --without-static-libpython && \
    make -j$(nproc) && \
    make altinstall && \
    ldconfig /usr/lib && \
    # Install pip and upgrade \
    python3 -m ensurepip --upgrade && \
    pip3 install --no-cache-dir --upgrade pip

#
# Clean up
#
RUN set -eu && \
    apk del --no-cache \
        build-base \
        libffi-dev \
        openssl-dev \
        bzip2-dev \
        zlib-dev \
        readline-dev \
        sqlite-dev \
        wget && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

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
