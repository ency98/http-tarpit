#!/usr/bin/env bash
#! Build Image

#? Change as needed
REGISTRY="$(hostname -s).local"
IMAGE_NAME="http-tarpit"
IMAGE_TAG="latest"
IMAGE="$REGISTRY/$IMAGE_NAME:$IMAGE_TAG"

#? Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#? Move to Project directory
cd "$SCRIPT_DIR/.." || exit 1

#? Build image
docker build -t $IMAGE .
if [[ $? -eq "0" ]]; then
	echo -e "\n\tSuccess: Built image - $IMAGE_NAME\n"
else
	echo -e "\n\tFailed: Could not build image - $IMAGE_NAME\n"
fi
