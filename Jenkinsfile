pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                git pull https://github.com/IrezD/nginx-reverse-proxy-for-jenkins-server
                mkdir /var/www/
                mv . /var/www
            }
        }
    }
}
