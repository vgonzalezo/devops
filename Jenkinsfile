pipeline {
  agent {
    docker { image 'node:latest' }
  }
  stages {
    stage('Test') {
      steps { sh 'make test' }
    }

    stage('Build') {
      steps { sh 'make build' }
    }

    stage('Deploy') {
      steps { sh 'make deploy' }
    }
  }
}