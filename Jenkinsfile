pipeline  {
	agent {
		sudo docker build -t boot-docker:${BUILD_NUMBER} ${WORKSPACE}.execute()
		sudo docker run -p 8081:8080 boot-docker:${BUILD_NUMBER}.execute()
	}
	tools {
		maven 'Maven3'
		jdk 'JDK8'
	}

	stages {
		stage('init') {
			steps {
				sh '''
					echo "PATH = ${PATH}"
					echo "M2_HOME = ${M2_HOME}"
				'''
			}
		}

		stage ('Build') {
			steps {
				sh 'mvn install'
			}
		}
	}
}
