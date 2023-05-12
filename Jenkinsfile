pipeline {
    agent any
    stages {
       
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=plan.out'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply plan.out'
            }
        }
    }
}

