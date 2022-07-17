pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	
		stage('duckerhub login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW |  docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		
		stage('Build') {

			steps {
				sh 'docker build -t anwarhb/docker_bitcoin:latest .'

			}
		}


		stage('Push') {

			steps {
				sh ' docker push anwarhb/docker_bitcoin'

			}
		}
	}

	post {
		always {
			sh ' docker logout'
		}
	}

}


