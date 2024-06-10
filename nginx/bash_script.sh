#!/bin/bash

sudo unlink /etc/nginx/sites-enabled/default

sudo scp jenkins.conf /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/jenkins.conf /etc/nginx/sites-enabled/

sudo systemctl reload nginx

sudo nginx -t

