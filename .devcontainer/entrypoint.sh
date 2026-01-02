#!/bin/bash

DOCKER_GID=999
groupadd -g ${DOCKER_GID} docker && \
  chown root:docker /var/run/docker.sock && \
  usermod -aG docker vscode

ln -s -f ~/.devcontainer/shared /workspace/shared

bundler install --jobs=4 --retry=3

# Execute the remaining arguments passed to the container
exec "$@"
