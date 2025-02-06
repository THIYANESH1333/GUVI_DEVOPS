pipeline {
    agent any

    environment {
        IMAGE_NAME = "mydockerhubuser/my-webpage"
        KUBE_CONFIG = credentials('kube-config')
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-repo/webpage.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:latest .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker push $IMAGE_NAME:latest'
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}
