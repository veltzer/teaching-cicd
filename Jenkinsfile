pipeline {
    agent { docker { image 'python_with_pytest:latest' } }
    stages {
        stage('test') {
            steps {
                sh 'PYTHONPATH=. pytest'
            }
        }
    }
}
