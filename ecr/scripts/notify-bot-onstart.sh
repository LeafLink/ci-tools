#!/bin/bash

set -e

# Inform LLP bot that a build started
if [[ ! -z "${BOT_WEBHOOK_URL}" ]] && [[ ! -z "${BOT_WEBHOOK_TOKEN}" ]]; then
    echo "Informing bot that build started..."
    echo "    DEBUG: Webhook URL - ${BOT_WEBHOOK_URL}"
    echo "    DEBUG: Tag - ${DOCKER_TAG}"
    echo "    DEBUG: Repo - ${CIRCLE_PROJECT_REPONAME}"
    echo "    DEBUG: Build URL - ${CIRCLE_BUILD_URL}"

    curl --request POST "${BOT_WEBHOOK_URL}" \
        --header "Authorization: Bearer ${BOT_WEBHOOK_TOKEN}" \
        --header "Content-Type: application/json" \
        --data-raw "{\"event\": \"build_started\", \"build_url\":\"${CIRCLE_BUILD_URL}\", \"repo\": \"${CIRCLE_PROJECT_REPONAME}\", \"tag\": \"${DOCKER_TAG}\"}"
fi
