pipeline {
  agent any
  stages {
    stage('Init') {
      steps {
        bat 'terraform init'
      }
    }
    stage('Install Dependencies') {
      steps {
        script {
          sh """
            pip install boto3 requests -t .
          """
        }
      }
    }
    stage('Plan') {
      steps {
        bat 'terraform plan'
      }
    }
/*
    stage('Apply') {
      steps {
        bat 'terraform apply -auto-approve'
      }
    }
    
        
    stage('Destroy') {
      steps {
        bat 'terraform destroy -auto-approve'
      }
    }
       */

    stage('Configure AWS Credentials') {
            steps {
                    bat 'aws configure set aws_access_key_id AKIAXQM6UOUEPNWGC7MB'
                    bat 'aws configure set aws_secret_access_key 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'
                    bat 'aws configure set region ap-south-1'
            }
        }
    stage('Invoke Lambda Function') {
      
      steps {
        script {
          sh """
            aws lambda invoke \
              --function-name lambda \
              --region ap-south-1 \
              output.json
          """
          output = readFile('output.json')
        }
        script {
          if (output.contains('"statusCode": 200')) {
            echo 'Lambda function invocation was successful'
          } else {
            echo 'Lambda function invocation failed'
          }
        }
      }
      
      
     
 
  }
}
}
