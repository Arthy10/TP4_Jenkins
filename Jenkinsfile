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
                echo 'docker build -t github-jenkins .'
                echo 'docker run -d -p 5000:5000 github-jenkins'
            }
        }
    }

    triggers {
        githubPush()
    }
}
