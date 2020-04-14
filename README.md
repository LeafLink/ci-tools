# ci-tools

Continuous Integration tooling for LeafLink source code repositories

---

[![Current Release](https://img.shields.io/badge/release-0.2.0-1eb0fc.svg)](https://github.com/leaflink/ci-tools/releases/tag/0.2.0)
[![CircleCI](https://circleci.com/gh/LeafLink/ci-tools.svg?style=svg)](https://circleci.com/gh/LeafLink/ci-tools)


- [Usage](#usage)
  * [CircleCI Example](#circleci-example)
- [Docker Registry Support](#docker-registry-support)
- [Development Workflows](#development-workflows)
- [Contributing](/.github/CONTRIBUTING.md)

## Usage

This repository contains scripts tools that are intended to be used by LeafLink repositories to handle common Continuous Integration (CI) functions such as setting up reusable environment variables, logging in to a Docker repository like [Amazon ECR](https://aws.amazon.com/ecr/), and pushing tagged images to a Docker repository.

### CircleCI Example

This repo contains a [CircleCI Example](circleci.example.yml) file to illustrate how to download and use these scripts and tools within the CircleCI environment.

## Docker Registry Support

This repo supports the following Docker registries:

- [Amazon ECR](https://aws.amazon.com/ecr/)

Each registry has a unique top-level folder. Each folder contains a `scripts.txt` file with a list of available scripts (`.sh` files) that can be downloaded and used to setup and interact with the registry.

To download all of the scripts listed in the `scripts.txt`, you use a command like:

```bash
curl https://raw.githubusercontent.com/leaflink/ci-tools/master/ecr/scripts.txt | wget -P /tmp/build/ -i -
```

## Development Workflows

When developing or updating these scripts, you can modify the relevant `scripts.txt` file in the registry you're using to point the downloaded scripts at your working branch instead of `master`. Example:

instead of:

```
https://raw.githubusercontent.com/leaflink/ci-tools/master/ecr/scripts/aws-cli.sh
```

you'd use:

```
https://raw.githubusercontent.com/leaflink/ci-tools/my-branch/ecr/scripts/aws-cli.sh
```

And then update the `.circleci/config.yml` to download the file from your branch instead of master:

```bash
curl https://raw.githubusercontent.com/leaflink/ci-tools/my-branch/ecr/scripts.txt | wget -P /tmp/build/ -i -
```

allowing you to test out your changes before opening a pull request.
