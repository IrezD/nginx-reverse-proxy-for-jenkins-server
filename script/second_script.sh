#!/bin/bash

# Run this script to install Gitlab

sudo apt update && sudo apt install docker.io -y

sudo mkdir -p /srv/gitlab && export GITLAB_HOME=/srv/gitlab

sudo docker run --detach --hostname localhost --publish 443:443 --publish 8080:80 --publish 2233:22 --name gitlab --restart always --volume $GITLAB_HOME/config:/etc/gitlab --volume $GITLAB_HOME/logs:/var/log/gitlab --volume $GITLAB_HOME/data:/var/opt/gitlab --shm-size 2gb gitlab/gitlab-ee:latest

echo "Gitlab container is running."