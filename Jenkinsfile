pipeline {
  agent any
  stages {
    stage ('Init') {
      steps {
        bat 'terraform init'
      }
    }
    stage ('Plan') {
      steps {
        bat 'terraform plan'
      }
    }
    
    stage ('Apply') {
     steps {
        bat 'terraform apply -auto-approve'
      }
    }
    /*
    stage ('Destroy') {
      steps {
        bat 'terraform destroy -auto-approve'
      }
    }
    */
    stage('Invoke Lambda Function') {
  steps {
    sh """
      aws lambda invoke \
        --function-name lambda \
        output.json
    """
    script {
      output = readFile('output.json')
    };
    if (output.contains('"statusCode": 200')) {
      echo 'Lambda function invocation was successful'
    } else {
      echo 'Lambda function invocation failed'
    }
  }
}

  }
}
