pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	

		
		stage('Build image') {

			steps {
				sh 'sudo docker build -t anwarhb/docker_bitcoin:latest .'
			}
		}


		stage('Push to dockerHub') {

			steps {
				sh ' sudo docker push anwarhb/docker_bitcoin'
			}
		}
	}

}
