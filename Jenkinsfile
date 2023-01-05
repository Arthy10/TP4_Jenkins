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
                echo 'python -m unitest'
               
            }
        }
        stage('deploying from github')
            steps {
                echo 'docker build -t <your_image_name> .'
                echo 'docker run -d -p 5000:5000 <your_image_name>'
            }    
        }
    }
    
    triggers {
        githubPush()
    }
}
