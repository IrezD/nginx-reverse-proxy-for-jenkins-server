# Configuration Details
From the home directory Copy the 'jenkins.conf' file to **/etc/nginx/sites-available/** directory using command below: <br><br>
**run:** _sudo scp nginx-reverse-proxy-for-jenkins-server/nginx/jenkins.conf /etc/nginx/sites-available/_

## Remove default config file in site-enabled directory
**run:**  _sudo unlink /etc/nginx/sites-enabled/default_

## Create a Symbolic link for the custom jenkins.conf file
**run:** _sudo ln -s /etc/nginx/sites-available/jenkins.conf /etc/nginx/sites-enabled_

## Verify configuration
**run:** _sudo nginx -t_

## Reload Nginx service
**run:** _sudo systemctl reload nginx_
