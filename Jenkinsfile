pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo/laravel-chart.git'
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
                sh 'helm upgrade --install laravel-app ./laravel-chart'
            }
        }
    }
}
