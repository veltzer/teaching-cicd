pipeline {
    stages {
        stage('Run Parallel Tests') {
            parallel {
                stage('Windows') {
                    agent {
                        label 'SlaveWindows'
                    }
                    steps {
		    	bat 'echo "Sleep 10 seconds on Windows Node"'
                    }
                }
                stage('Linux') {
                    agent {
                        label 'unix'
                    }
                    steps {
		    	sh 'echo "Sleep 10 seconds on Linux Node"'
                    }
                }
            }
        }
    }
}
