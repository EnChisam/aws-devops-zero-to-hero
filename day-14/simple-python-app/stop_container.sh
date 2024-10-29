#!/bin/bash
set -e

# Stop and remove all running containers
echo "Stopping and removing all running containers..."

# Get all container IDs
containerIDs=$(docker ps -q)

if [ -n "$containerIDs" ]; then
    docker rm -f $containerIDs
    echo "All running containers have been stopped and removed."
else
    echo "No running containers to stop."
fi
