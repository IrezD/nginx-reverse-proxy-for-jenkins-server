# Configuration Details
This configuration file to be stored in **/etc/nginx/sites-available/** directory

## Remove default config file
Navigate to **/etc/nginx/sites-enable/** <br>
**run:**  _sudo unlink default_

## Create a Symbolic link for the custom config file (Jenkins.conf)
**run:** _sudo ln -s /etc/nginx/sites-available/ /etc/nginx/sites-enable_

## Verify configuration
**run:** _sudo nginx -t_

## Reload Nginx service
**run:** _sudo systemctl reload nginx_
