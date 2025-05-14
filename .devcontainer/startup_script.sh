#!/bin/bash
set -e

# Install Minikube and dependencies
echo "Installing Minikube and dependencies..."
sudo apt-get update && sudo apt-get install -y curl conntrack
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/

# Start Minikube using the "none" driver
echo "Starting Minikube..."
sudo minikube start --driver=docker || true

