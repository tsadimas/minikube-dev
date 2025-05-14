#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

# Install dependencies
sudo apt-get update
sudo apt-get install -y curl conntrack

# Install kubectl
echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -Ls https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Install Minikube
echo "Installing Minikube..."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/

# Start Minikube using Docker (socket is mounted from host)
echo "Starting Minikube with Docker driver..."
minikube start --driver=docker

# Optionally alias kubectl
echo "alias kubectl='minikube kubectl --'" >> ~/.bashrc