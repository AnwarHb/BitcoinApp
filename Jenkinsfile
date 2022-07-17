pipeline {

  agent any
  
  stages {


    stage('image Build') {
      steps {
        sh 'docker build -t anwarhb/docker_bitcoin:latest .'

      }
    }

    stage('push to dockerHub') {
      steps {
	  sh 'docker push anwarhb/docker_bitcoin:latest'
        }
      }
    }

    
}


