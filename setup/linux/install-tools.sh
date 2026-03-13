#!/bin/bash

echo "Installing AWS DevOps environment"

sudo apt update

sudo apt install -y \
git \
curl \
unzip \
docker.io \
python3 \
python3-pip

echo "Installing AWS CLI"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

echo "Installing Terraform"

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt update

sudo apt install terraform

echo "Installing kubectl"

curl -LO "https://dl.k8s.io/release/stable/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/

echo "Installing Helm"

curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

echo "Environment setup completed"
