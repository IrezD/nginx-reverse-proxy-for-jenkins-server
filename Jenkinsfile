pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                git pull https://github.com/IrezD/nginx-reverse-proxy-for-jenkins-server
                ls
                mkdir -p /var/www/
                mv . /var/www
            }
        }
    }
}
