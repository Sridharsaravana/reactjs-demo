#!/bin/bash
#Deploy script for prod branch
    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    docker login -u sridharsaravana -p dckr_pat_fm9zwkuBm0qOstqPurVhQss74zg
    docker tag reactapp sridharsaravana/prod
    docker push sridharsaravana/prod:latest
