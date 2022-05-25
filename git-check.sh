#!/bin/bash

#cd /Users/nambg/Desktop/EdvinInc/docker_prj
a="$(git rev-list --count HEAD...origin/dev)"
echo "$a"
if (( $a > 0 )); then 
    git checkout .
    git pull origin dev
    # Run script pull and auto deploy conference beta with docker-compose If value is greater than or equal 1
    #./auto-build-deploy.sh
    cd docker-vuejs/
    
    docker build -t learning-docker/vue:v1 .

    docker-compose up -d

    echo "Updated successfully!"
else
    echo "Up-to-date!"
fi