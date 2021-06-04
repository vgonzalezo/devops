pipeline {
  agent {
    docker { image 'node:latest' }
  }
  stages {
    stage('Build') {
      steps { sh 'make build' }
    }

    stage('Deploy') {
      steps { sh 'make deploy' }
    }
  }
}