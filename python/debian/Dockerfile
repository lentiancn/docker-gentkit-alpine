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
    apt-get update -y && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get autoremove -y --purge && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* \
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