pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                sh 'ls -l'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "No tests yet!"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                sh './app.sh'
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
