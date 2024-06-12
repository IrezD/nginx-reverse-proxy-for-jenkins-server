pipeline {
    agent {
        docker { image 'alpine/git:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'git --version'
            }
        }
    }
}
