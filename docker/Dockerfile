# Use an official Ubuntu runtime as a parent image
FROM ubuntu:20.04

SHELL ["/bin/bash", "-c"]

# General installs in the docker
RUN apt-get -y update \
    && apt-get install -y curl \
        git \
        host \
        wget \
        vim \
        screen \
        software-properties-common \
        python3.8 python3-pip \
        npm \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean -y

#
# code copy and setup
#

# copy docker scripts
COPY docker docker

#
# Docker configuration
#

# expose ports for app - both frontend and backend (apidocs for flask)
EXPOSE 8080

ENTRYPOINT ["docker/entrypoint.sh"]
CMD ["bash"]
