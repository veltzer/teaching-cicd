pipeline {
    // agent { docker { image 'python_with_pytest:latest' } }
    agent { any }
    stages {
        stage('test') {
            steps {
                sh 'PYTHONPATH=. pytest'
            }
        }
    }
}
