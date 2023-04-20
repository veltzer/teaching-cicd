pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                sh 'python -m pip install --no-cache-dir pytest'
                sh 'python -m pytest tests'
            }
        }
    }
}
