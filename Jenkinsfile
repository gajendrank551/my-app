pipeline {
    agent any

    triggers{ 
        pollSCM '* * * * *'
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
        stage('Deploy') {
            steps {
                sh 'docker build -t m1 .'
            }
        }
    }
}
