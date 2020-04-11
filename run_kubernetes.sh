#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="$DOCKER_USER/udacity:v1"
podname="udacity-project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $podname --port=80 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $(kubectl get pods -o=name | grep $podname | sed "s/^.\{4\}//") 8000:80
