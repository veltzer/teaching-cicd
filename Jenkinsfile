pipeline {
    //agent { docker { image 'python:3-alpine' } }
    agent { docker { image 'python_with_pytest:latest' } }
    // agent any
    stages {
        stage('test') {
            steps {
                //sh 'PYTHONPATH=. pytest'
                sh 'python -m pip install --no-cache-dir pytest'
                sh 'python -m pytest tests'
            }
        }
    }
}
