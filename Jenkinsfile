pipeline{
    agent any
    tools {
  terraform 'terraform'
       }
    stages{
        
        stage("GIT CHECKOUT"){
            steps{
                
               git branch: 'main', url: 'https://github.com/sutarym/training.git'
            }
        }
        
        stage("TF Init"){
            steps{
                echo "Executing Terraform Init"
                sh 'terraform init'
            }
        }
         
        stage("TF Validate"){
            steps{
                echo "Validating Terraform Code"
               
            }
        }
        stage("TF Plan"){
            steps{
                echo "Executing Terraform Plan"
                
            }
        }
        stage("TF Apply"){
            steps{
                echo "Executing Terraform Apply"
                
            }
        }
        stage("Invoke Lambda"){
            steps{
                echo "Invoking your AWS Lambda"
            }
        }
    }
     
}
