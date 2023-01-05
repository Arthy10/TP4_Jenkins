pipeline {
    agent any

    stages {
        stage('build from github') {
            steps {
                echo 'pip install -r requirements.txt'
            }
        }
        stage('test from github') {
            steps {
                echo 'python -m unittest'
            }
        }
        stage('deploying from github') {
            steps {
                echo 'docker build -t docker-image .'
                echo 'docker run -d -p 6003:5000 docker-image'
            }
        }
    }
}
