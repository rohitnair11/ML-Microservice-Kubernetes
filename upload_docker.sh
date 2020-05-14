#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=rohitnair11/housing_prediction

# Step 2:  
# Authenticate & tag
docker login --username=rohitnair11
docker tag 4112ae34c048 rohitnair11/housing_prediction:version1.0
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath