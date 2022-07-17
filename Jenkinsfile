pipeline {


    environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

    agent any
    stages {


        stage('Build image') {
            steps {

                sh 'docker build -t docker_bitcoin .'

            }
        }

        stage('Login to dockerhub') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		stage('Push') {

			steps {
			    sh' docker tag docker_final anwarhb/docker_bitcoin'
				sh ' docker push anwarhb/docker_bitcoin'
			}
		}

    }

}
