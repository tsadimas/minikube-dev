#!/bin/bash
set -e


sudo apt-get update

sudo apt-get install -y kubectl

sudo apt-get install -y docker.io

# Install Minikube and dependencies
echo "Installing Minikube and dependencies..."
sudo apt-get update && sudo apt-get install -y curl conntrack
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/


sudo service docker start
# Start Minikube using the "none" driver
echo "Starting Minikube..."
minikube start –driver=docker

