#!/bin/bash

git checkout .
git pull origin dev

cd docker-vuejs/

# Checkout from git repository and pull to server
#git checkout .
#git pull origin beta

# Restore backup file
#sudo cp -ar /opt/backup/docker-web/nginx/* docker-web/nginx/
#sudo cp /opt/backup/docker-web/web/* docker-web/web/
#sudo cp /opt/backup/docker/.env docker/

# Build images from new source code
docker build -t learning-docker/vue:v1 .

# Remove all untaged images
#docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

# Run docker compose and start
#cd docker
docker-compose up -d