#!/bin/bash

if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo "Error: .env file not found."
    exit 1
fi

image_name=$1
dockerfile_path="./ci/build/Dockerfile"
project_dir=$(pwd)
container_workdir="/app/"

echo "Building Docker image: $image_name"
docker buildx build -t $image_name -f $dockerfile_path .

if [[ $? -ne 0 ]]; then
    echo "Docker build failed."
    exit 1
fi

echo "Running Docker container and mounting project directory.."
docker run --rm -ti \
    -v "$project_dir:$container_workdir" \
    -v "$wow_addons_dir:$wow_addons_dir" \
    $image_name bash

if [[ $? -ne 0 ]]; then
    echo "Error: Failed to start Docker container."
    exit 1
fi

