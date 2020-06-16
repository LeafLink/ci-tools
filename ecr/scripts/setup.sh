#!/bin/bash

set -e

AWS_ECR_BASE="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"
CIRCLE_TAG="$(git tag -l --points-at HEAD)" # NOTE: CIRCLE_TAG is flaky, so we override it here
DOCKER_TAG="${CIRCLE_SHA1:0:7}"

[ "${CIRCLE_BRANCH}" == "master" ] && DOCKER_TAG="master-${CIRCLE_SHA1:0:7}"
[[ ! -z "${CIRCLE_PR_NUMBER}" ]] && DOCKER_TAG="PR-${CIRCLE_PR_NUMBER}"
[[ ! -z "${CIRCLE_TAG}" ]] && DOCKER_TAG="${CIRCLE_TAG}"

echo "export CIRCLE_TAG='${CIRCLE_TAG}'" >> $BASH_ENV
echo "export DOCKER_IMAGE_BASE='${AWS_ECR_BASE}/${CIRCLE_PROJECT_REPONAME}'" >> $BASH_ENV
echo "export DOCKER_TAG='${DOCKER_TAG}'" >> $BASH_ENV

# Inform LLP bot that a build started
if [[ ! -z "${BOT_WEBHOOK_URL}" ]] && [[ ! -z "${BOT_WEBHOOK_TOKEN}" ]]; then
    echo "Informing bot that build started..."
    echo "    DEBUG: Webhook URL - ${BOT_WEBHOOK_URL}"
    echo "    DEBUG: Tag - ${DOCKER_TAG}"
    echo "    DEBUG: Repo - ${CIRCLE_PROJECT_REPONAME}"
fi
