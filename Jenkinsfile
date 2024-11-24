pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/sachinbisht260796/hello-world-frontend'
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