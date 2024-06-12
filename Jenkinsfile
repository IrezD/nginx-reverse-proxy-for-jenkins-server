pipeline {
    agent {
        docker { image 'alpine/git' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'git --version'
            }
        }
    }
}
