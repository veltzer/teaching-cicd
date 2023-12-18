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
            my_steps {
                sh 'python -m pytest'
            }
        }
    }
}
