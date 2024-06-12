#!/bin/bash

# Run this script to install Nginx and Jenkins

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

sudo vi /lib/systemd/system/jenkins.service 

sudo systemctl restart jenkins && sudo systemctl daemon-reload
sudo systemctl stop jenkins && sudo systemctl start jenkins

sudo systemctl status jenkins

echo "Script has was successfully ran! If Jenkins is not in a running state, run 'sudo systemctl enable --now jenkins'."

