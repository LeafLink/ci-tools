#!/bin/bash

set -e

docker push $DOCKER_IMAGE_BASE:$DOCKER_TAG

if [[ ! -z "${CIRCLE_TAG}" ]]; then
  docker tag $DOCKER_IMAGE_BASE:$DOCKER_TAG $DOCKER_IMAGE_BASE:stable
  docker push $DOCKER_IMAGE_BASE:stable
elif [ "${CIRCLE_BRANCH}" == "master" ]; then
  docker tag $DOCKER_IMAGE_BASE:$DOCKER_TAG $DOCKER_IMAGE_BASE:master
  docker tag $DOCKER_IMAGE_BASE:$DOCKER_TAG $DOCKER_IMAGE_BASE:latest
  docker push $DOCKER_IMAGE_BASE:master
  docker push $DOCKER_IMAGE_BASE:latest
fi
