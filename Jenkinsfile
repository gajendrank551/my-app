pipeline {
    agent {
        label 'app'
    } 

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
        stage('Docker') {
            steps {
                script{
                    sh 'docker build -t DD . '
                }
            }
        }
    }
}
