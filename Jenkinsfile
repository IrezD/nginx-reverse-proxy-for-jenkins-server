pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'git pull https://github.com/IrezD/nginx-reverse-proxy-for-jenkins-server'
                sh 'ls'
                sh 'mkdir -p /var/www/'
                sh 'chown -R root:var/www/'
                sh 'cp -R * /var/www/'
                sh 'ls /var/www/'
            }
        }
    }
}
