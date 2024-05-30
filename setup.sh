#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 777 /var/run/docker.sock

sudo mkdir -p /home/azureuser/.docker/cli-plugins/
sudo curl -SL https://github.com/docker/compose/releases/download/v2.27.1/docker-compose-linux-x86_64 -o /home/azureuser/.docker/cli-plugins/docker-compose
sudo chmod +x /home/azureuser/.docker/cli-plugins/docker-compose
