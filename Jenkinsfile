pipeline {
  agent {
    docker { image 'node:latest', port '4200' }
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
      steps { dir('app') {sh 'npm run debug' }}
    }
  }
}