pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Alvinbsi/laravel-cicd-pipeline.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('Helm Deploy') {
            steps {
                sh 'helm upgrade --install laravel-app ./laravel-cicd-pipeline'
            }
        }
    }
}
