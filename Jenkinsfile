pipeline {
    agent any
    stages {
        stage('Fetching latest code from Git Repo') {
            steps {
                sh 'git clone https://github.com/IrezD/nginx-reverse-proxy-for-jenkins-server'
                sh 'ls'
            }
        }

        stage('Preparing directory & copying files'){
            steps{
                sh 'mkdir -p /var/www/'
                sh 'sudo chown -R jenkins:jenkins /var/www/'
                sh 'cp -R * /var/www/'
            }
        }

        stage('Verify files in target location'){
            steps{
                sh 'ls /var/www/'
            }
        }
    }
}
