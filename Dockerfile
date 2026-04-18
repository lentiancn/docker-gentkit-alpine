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
# Copy resources
#
ADD alpinefs.tar.gz /

#
# Set the working directory to /root for subsequent instructions
#
WORKDIR /root

#
# Set the default command to execute when running the image
#
CMD ["/bin/sh"]
