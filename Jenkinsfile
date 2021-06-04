pipeline {
  agent {
    docker { image 'node:latest' }
  }
  stages {
    stage('Install') {
      steps { dir('app') { sh 'npm install' }}
    }
 
    /*stage('Test') {
      parallel {
        stage('Static code analysis') {
            steps { sh 'npm run-script lint' }
        }
        stage('Unit tests') {
            steps { sh 'npm run-script test' }
        }
      }
    }*/
 
    stage('Build') {
      steps { sh 'make build' }
    }

    stage('Deploy') {
      steps { sh 'make deploy' }
    }
  }
}