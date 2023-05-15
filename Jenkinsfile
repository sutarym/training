pipeline {
  agent any
  stages {
    stage ('Init') {
      steps {
        sh 'terraform init -backend-config=backend.tf'
      }
    }
    stage ('Plan') {
      steps {
        sh 'terraform plan'
      }
    }
    stage ('Apply') {
      steps {
        sh 'terraform apply'
      }
    }
  }
}
