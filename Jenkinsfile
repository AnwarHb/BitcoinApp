pipeline {

  agent any
  
  stages {


    stage('image Build') {
      steps {
        sh 'sudo docker build -t anwarhb/docker_bitcoin:latest .'

      }
    }

    stage('push to dockerHub') {
      steps {
	  sh 'sudo docker push anwarhb/docker_bitcoin:latest'
        }
      }
    }

    
}


