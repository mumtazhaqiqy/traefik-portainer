#!/bin/bash

# Update and upgrade the system
sudo apt-get update
sudo apt-get upgrade -y

# Install Docker
curl -fsSL https://get.docker.com | sudo bash

# Initialize Docker Swarm
sudo docker swarm init

# Create an overlay network named traefik-public
sudo docker network create --driver overlay traefik-public

# Create directories and files for Traefik
sudo mkdir -p /mnt/data/traefik
sudo touch /mnt/data/traefik/acme.json
sudo chmod 600 /mnt/data/traefik/acme.json

# Create directory for Portainer
sudo mkdir -p /mnt/data/portainer

echo "Script executed successfully."
