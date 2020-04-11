#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="udacity:v1"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USER" --password-stdin
docker tag $dockerpath $DOCKER_USER/$dockerpath
# Step 3:
# Push image to a docker repository
docker push $DOCKER_USER/$dockerpath