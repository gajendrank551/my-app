pipeline {
    agent any

    triggers{ 
        pollSCM '* * * * *'
    } 
    environment {
        MY = 'DILIP'
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/08dilipkumar/my-app.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        } 
        stage('Docker build') {
            steps {
                sh 'echo Hii ${MY}'
            }
        }
    }
}
