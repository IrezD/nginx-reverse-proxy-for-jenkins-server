#!/bin/bash

# Run this script to install Gitlab

sudo apt-get update

sudo apt-get install -y curl openssh-server ca-certificates tzdata perl

sudo apt-get install -y postfix

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash

sudo EXTERNAL_URL="https://gitlab.dennisowie.com" apt-get install gitlab-ee

echo "Gitlab has been installed successfully! Run 'curl localhost:8080'"