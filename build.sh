#!/bin/bash
docker build -t fedora-wsl .
docker run -t fedora-wsl echo done
export CONTAINER_ID=$(docker container ls -a | grep -i fedora-wsl | awk '{print $1}') && echo $CONTAINER_ID
docker export $CONTAINER_ID > fedora-wsl.tar