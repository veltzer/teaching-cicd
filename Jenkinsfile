pipeline {
    agent none
    stages {
        stage('Run Parallel Tests') {
	stage('Linux') {
	    agent {
		label 'unix'
	    }
	    steps {
		script {
			sh 'docker --version'
		}
	    }
        }
    }
}
