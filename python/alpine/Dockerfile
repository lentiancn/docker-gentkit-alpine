#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-images/blob/main/LICENSE
#

#
# Stage 1 : Builder
#
ARG ALPINE_TAG=latest
FROM gentkit/alpine:${ALPINE_TAG} AS builder

#
# Define build arguments
#
ARG PYTHON_VERSION

#
# Optimize system
#
RUN set -eu && \
    # Update package index without caching \
    apk update --no-cache && \
    # Install specified Python version \
    apk add --no-cache python${PYTHON_VERSION}

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
