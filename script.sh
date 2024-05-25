#!/bin/bash

# Create directories and files for Traefik
mkdir -p /mnt/data/traefik
touch /mnt/data/traefik/acme.json
chmod 600 /mnt/data/traefik/acme.json

# Create directory for Portainer
mkdir -p /mnt/data/portainer

# Initialize Docker Swarm
docker swarm init

# Create an overlay network named traefik-public
docker network create --driver overlay traefik-public

echo "Script executed successfully."
