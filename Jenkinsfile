pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	
		stage('Login to dockerhub') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		
		stage('Build image') {

			steps {
				sh ' sudo docker build -t anwarhb/docker_bitcoin:latest .'
			}
		}


		stage('Push to dockerHub') {

			steps {
				sh 'sudo docker push anwarhb/docker_bitcoin'
			}
		}
	}

	post {
		always {
			sh ' docker logout'
		}
	}

}
