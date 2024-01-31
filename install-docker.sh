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
