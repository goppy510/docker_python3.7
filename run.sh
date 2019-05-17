#!/bin/sh

IMAGE_NAME="python3.7.0-ubuntu"

if [ "${IMAGE_NAME}" = "" ]
then
  exit 1
fi

cd "$(dirname $0)"
if [ "$1" = "build" ]
then
  docker build -i ${IMAGE_NAME}
fi

docker run --rm -it \
  -v "$(pwd)":/usr/local/python \
  -w /usr/local/python \
  ${IMAGE_NAME} python "$@"