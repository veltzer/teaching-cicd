pipeline {
    agent none
    stages {
        stage('Run Parallel Tests') {
            parallel {
                stage('Windows') {
                    agent {
                        label 'windows'
                    }
                    steps {
			script {
				bat 'powershell Start-Sleep -Seconds 10'
			}
                    }
                }
                stage('Linux') {
                    agent {
                        label 'unix'
                    }
                    steps {
			script {
				sh 'uname -r'
			}
                    }
                }
            }
        }
    }
}
