pipeline{
    agent any
    tools {
  terraform 'terraform'
       }
    stages{
        
       
        
        stage("TF Init"){
            steps{
                echo "Executing Terraform Init"
                sh 'terraform init'
            }
        }
         
        
    }
}
