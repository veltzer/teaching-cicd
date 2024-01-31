pipeline {
    agent {
        docker {
            image 'maven'
        }
    }
    stages {
        stage('compile') {
            steps {
		sh '# wget google.com'
                sh 'mvn compile -Dmaven.repo.local=m2'
            }
        }
    }
}
