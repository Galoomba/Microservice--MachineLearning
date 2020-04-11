#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
PROJECT_TAG="udacity:v1"
# Step 1:
# Build image and add a descriptive tag
pwd
docker build -t $PROJECT_TAG .
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
docker run --name udacityProject -it --restart=always -p 8000:80 $PROJECT_TAG
