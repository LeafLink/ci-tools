#!/bin/bash

sudo apt install -y python-pip && pip --no-cache-dir install awscli
eval $(aws ecr get-login --no-include-email)
