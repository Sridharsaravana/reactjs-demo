#!/bin/bash
#Deploy script for prod branch
    echo "Building image for prod branch ... "
    docker build -t reactapp  .
    docker login -u username -p docker_token
    docker tag reactapp sridharsaravana/prod
    docker push sridharsaravana/prod:latest
