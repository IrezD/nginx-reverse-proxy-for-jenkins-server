# Configuration Details
Move the 'jenkins.conf' file to **/etc/nginx/sites-available/** directory using command below: <br>
**run:** _sudo scp nginx-reverse-proxy-for-jenkins-server/nginx/jenkins.conf /etc/nginx/sites-available/_

## Remove default config file
Navigate to **/etc/nginx/sites-enabled/** <br>
**run:**  _sudo unlink default_

## Create a Symbolic link for the custom jenkins.conf file
**run:** _sudo ln -s /etc/nginx/sites-available/ /etc/nginx/sites-enabled_

## Verify configuration
**run:** _sudo nginx -t_

## Reload Nginx service
**run:** _sudo systemctl reload nginx_
