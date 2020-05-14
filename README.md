[![CircleCI](https://circleci.com/gh/rohitnair11/ML-Microservice-Kubernetes.svg?style=svg)](https://circleci.com/gh/rohitnair11/ML-Microservice-Kubernetes)

## Project Overview

This project aims to operationalize a Machine Learning Microservice API using Kubernetes. A scikit-learn model that predicts the prices of houses trained on the [Boston Housing](https://www.kaggle.com/c/boston-housing) dataset is used as the ML Microservice application. It is configured as a Python Flask application.  
The application is containerized using Docker and then it is pushed to DockerHub. Then, a Kubernetes cluster is configured and the docker container is deployed using Kubernetes. Finally, predictions can be made through the running flask app.

---

## Description

* The `app.py` file predicts housing prices using scikit-learn and also contains the flask server configuration.  
* `Makefile` helps in setting up the environment.  
* `Dockerfile` contains the steps for container configuration and execution of the app.  
* The `run_docker.sh` script is used to run the docker container locally.  
* The `upload_docker.sh` script tags and uploads the docker image to DockerHub.  
* The `run_kubernetes.sh` script runs the DockerHub container using Kubernetes.  

---

## Setup the Environment

* Create a virtualenv and activate it.
* Run `make install` to install the necessary dependencies.

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
