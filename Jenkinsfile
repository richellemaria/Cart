pipeline{
  agent {
      label 'WS'
  }
  stages{
    stage('Lint Check'){
        steps{
            sh "echo installing jslint"
            sh "npm i jslint"
            sh "ls -ltr node_modules/jslint/bin/"
            sh "node_modules/jslint/bin/jslint.js server.js"
        }
    }

  }

}    