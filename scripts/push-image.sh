#!/usr/bin/env bash
#! Push Image

#? Change as needed
REGISTRY="$(hostname -s).local"
IMAGE_NAME="http-tarpit"
IMAGE_TAG="latest"
IMAGE="$REGISTRY/$IMAGE_NAME:$IMAGE_TAG"

#? Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#? Move to Project directory
cd "$SCRIPT_DIR/.." || exit 1

#? Push image
docker push $IMAGE
if [[ $? -eq "0" ]]; then
	echo -e "\n\tSuccess: Pushed image - $IMAGE_NAME\n"
else
	echo -e "\n\tFailed: Could not push image - $IMAGE_NAME\n"
fi