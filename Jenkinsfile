pipeline {
    agent any
    environment {
      PROJECT_NAME = "flask_web_app"
      OWNER_NAME   = "S.Yakauleu"
    }

    stages {
        stage('1Build') {
            steps {
                echo "Start of Stage Build"
                echo "Building....."
                echo "End of Stage Build"
            }
        }
        stage('2Test') {
            steps {
                echo "Start of Stage Test..."
                echo "Testing......."
                echo "Privet ${PROJECT_NAME}"
                echo "Owner is ${OWNER_NAME}"
                echo "End of Stage Build..."
            }
        }
        stage('3Deploy') {
            steps {
                echo "Start of Stage Deploy..."
                echo "Deploying......."
                sh "whoami"
                sh '''
                   "docker-compose build"
                   "docker-compose up -d"
                '''
                echo "End of Stage Build..."
            }
        }
        stage('4Celebrate') {
            steps {
                echo "FINISH!"
            }
        }
    }
