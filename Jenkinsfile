pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'git pull https://github.com/IrezD/nginx-reverse-proxy-for-jenkins-server'
                sh 'ls'
                sh 'mkdir -p /var/www/'
                sh 'cd var'
                sh 'chown -R root:www/'
                sh 'cd ..'
                sh 'cp -R * /var/www/'
                sh 'ls /var/www/'
            }
        }
    }
}
