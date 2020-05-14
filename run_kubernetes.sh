#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rohitnair11/housing_prediction:version1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath housing-prediction --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/housing-prediction 8000:80