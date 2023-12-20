pipeline {
    agent none
    stages {
	stage('Linux') {
	    agent {
		label 'unix'
	    }
	    steps {
		script {
			sh 'docker --version'
			sh 'groups'
		}
	    }
        }
    }
}
