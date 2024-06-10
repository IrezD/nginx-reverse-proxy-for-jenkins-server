#!/bin/bash

sudo apt update

sudo apt install nginx -y

echo "Nginx installed successfully. Prepararing for Jenkins installation next.."

sudo apt update

sudo apt install openjdk-11-jdk -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt install -y gnupg2

sudo apt update

sudo apt install jenkins -y

echo "Jenkins has been installed successfully! Installing GitLab next.."

sudo apt-get update

sudo apt-get install -y curl openssh-server ca-certificates tzdata perl

sudo apt-get install -y postfix

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash


sudo EXTERNAL_URL="https://gitlab.dennisowie.com" apt-get install gitlab-ee

sudo systemctl status jenkins

echo "Script has was successfully ran! If Jenkins is not in a running state, run 'sudo systemctl enable --now jenkins'."

