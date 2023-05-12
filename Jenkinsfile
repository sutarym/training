pipeline {
    agent any
    
     environment {
        ACCESS_KEY    = credentials('ACCESS_KEY')
        SECRET_KEY = credentials('SECRET_KEY')
        TF_IN_AUTOMATION      = '1'
    }
    stages {
       
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply'
            }
        }
    }
}

