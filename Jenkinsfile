pipeline {
    agent none
    stages {
        stage('Run Parallel Tests') {
            parallel {
                stage('Windows') {
                    agent {
                        label 'SlaveWindows'
                    }
                    steps {
			String version = System.getProperty("os.version")
		    	bat 'echo "Sleep 10 seconds on Windows Node"'
                    }
                }
                stage('Linux') {
                    agent {
                        label 'unix'
                    }
                    steps {
			String version = System.getProperty("os.version")
		    	sh 'echo "Sleep 10 seconds on Linux Node"'
                    }
                }
            }
        }
    }
}
