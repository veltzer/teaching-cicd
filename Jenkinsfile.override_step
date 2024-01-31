def my_steps(code) {
	sh 'echo before'
	code()
	sh 'echo after'
}

pipeline {
    agent {
        docker {
            image 'qnib/pytest'
        }
    }
    stages {
        stage('test') {
            steps {
	        my_steps {
		    sh 'python -m pytest'
		}
            }
        }
    }
}
