pipeline {
    agent any

    environment {
        IMAGE_NAME = 'au/node-test'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Cjones007/nodetest.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    def app = docker.build("${IMAGE_NAME}")
                }
            }
        }
    }
}
