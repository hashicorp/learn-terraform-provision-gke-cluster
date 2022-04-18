pipeline {
    agent any
    environment {
        PROJECT_ID = 'homedepot-342320'
        LOCATION = 'us-east1-c'
        CREDENTIALS_ID = 'homedepot-342320'
    } 
    stages {
        stage("Checkout code") {
            steps {
                checkout scm
            }
        }
        stage("Terraform Init") {
            steps {
                sh "/usr/local/bin/terraform init"
            }
        }
        stage("Terraform Plan") {
            steps {
                sh "/usr/local/bin/terraform plan"
            }
        }
        stage("Terraform Apply") {
            steps {
                sh "/usr/local/bin/terraform apply --auto-approve"
            }
        }
    }   
}