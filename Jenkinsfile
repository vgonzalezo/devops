pipeline {
  agent {
    docker { image 'node:latest' }
  }
  stages {
    stage('Install') {
      dir('app') {
        steps { sh 'npm install' }
      }
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
      dir('app') {
        steps { sh 'npm start' }
      }
    }
  }
}