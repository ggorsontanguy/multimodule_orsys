// Declarative //
pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				echo 'Building..'
				bat 'cd monappli & mvn install'
			}
		 post {
                success {
                    junit 'monappli/monappli-domaine/target/surefire-reports/*.xml'
                        }
                 }
               
		}
		stage('Test') {
			steps {
				echo 'Testing..'
			}
		}
		stage('Deploy') {
			steps {
				echo 'Deploying....'
			}
		}
	}
}