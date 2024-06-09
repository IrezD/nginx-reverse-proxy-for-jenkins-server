# Configuration Details
This configuration file to be stored in /etc/nginx/sites-available/ directory

## Remove default config file
Navigate to /etc/nginx/sites-enable/
run:  "sudo unlink default"

## Create a Symbolic link for the custom config file (Jenkins.conf)
run: "sudo ln -s /etc/nginx/sites-available/ /etc/nginx/sites-enable"

## Verify configuration
run: "sudo nginx -t"

## Reload Nginx service
run: "sudo systemctl reload nginx"
