#!/bin/bash

# Install necessary dependencies
sudo apt-get install -y wget apt-transport-https gnupg lsb-release

# Download and add Trivy GPG key
wget -qO- https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null

# Add Trivy repository to Apt sources
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list

# Update package manager repositories
sudo apt-get update

# Install Trivy
sudo apt-get install -y trivy
