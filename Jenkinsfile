pipeline {
    agent any
    
     
    stages {
       
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init -migrate-state'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
            }
        }
    }
}

