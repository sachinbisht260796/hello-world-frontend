pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', credentialsId: '828d6ce6-e450-46f8-b197-e2c3ae64c3d3', url: 'https://github.com/sachinbisht260796/hello-world-frontend.git'
            }
        }
    }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("hello-world-frontend")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 8080:80 hello-world-frontend'
                }
            }
        }
    }
}
