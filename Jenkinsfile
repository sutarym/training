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
  }
}
