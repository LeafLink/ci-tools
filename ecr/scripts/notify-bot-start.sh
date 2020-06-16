#!/bin/bash

set -e

# Inform LLP bot that a build started
if [[ ! -z "${BOT_WEBHOOK_URL}" ]] && [[ ! -z "${BOT_WEBHOOK_TOKEN}" ]]; then
    echo "Informing bot that build started..."
    echo "    DEBUG: Webhook URL - ${BOT_WEBHOOK_URL}"
    echo "    DEBUG: Tag - ${DOCKER_TAG}"
    echo "    DEBUG: Repo - ${CIRCLE_PROJECT_REPONAME}"

    curl -X POST \
        -h "Authorization: Bearer ${BOT_WEBHOOK_TOKEN}" -h "Content-Type: application/json" \
        -d "{\"event\": \"build_started\", \"repo\": \"${CIRCLE_PROJECT_REPONAME}\", \"tag\": \"${DOCKER_TAG}\"}" \
        $BOT_WEBHOOK_URL
fi
