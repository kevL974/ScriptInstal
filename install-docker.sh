#!/bin/bash

# Download official dockerinstall script from docker site
wget -O dockerinstall.sh https://get.docker.com

# Execute script
sh dockerinstall.sh

# Add current user to docker groupe
usermod -aG docker $(whoami)

# Restart docker service
systemctl restart docker

# Delete script dockerinstall.sh
rm dockerinstall.sh

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/v2.24.5/docker-compose-$(uname -s)-$(uname -m)" -o  /usr/local/bin/docker-compose

# Add execute permission
chmod +x /usr/local/bin/docker-compose