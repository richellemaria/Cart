@Library('roboshop-shared-library@dev') _

pipeline{
  agent {
      label 'WS'
  }
  stages{
    stage('Lint Check'){
        steps{
            scripts{
                sample.info('CART')
            }
            sh "echo installing jslint"
            sh "npm i jslint"
            sh "node_modules/jslint/bin/jslint.js server.js || true"
        }
    }
    stage('Code Complie'){
        steps{
              sh "npm install"
        }
    }
  }
}    