pipeline {
    agent any

    environment {
        IMAGE_NAME = 'au/node-test'
    }
    
    stage('Build Docker Image') {
        steps {
            script {
                def app = docker.build("${IMAGE_NAME}")
            }
        }
    }
}
