# Clone source from repositories 
https://github.com/nambgit/learning-docker.git

# Build Docker Images
docker build -t learning-docker/node:v1 .

* -t: flag to set images name
* learning-docker/node:v1: Image name with set version 1
* .: Require build images in the current folder

# Run Project from Docker Images
docker-compose up -d

