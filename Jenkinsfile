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
        stage('Docker') {
            steps {
                script{
                    sh 'docker build -t my-test . '
                }
            }
        } 
        stage('Push to DockerHub') {
            steps{
                script{
                    withCredentials([string(credentialsId: 'DD', variable: 'Dockerpwd')]) { 
                        sh 'docker login -u dilip112 -p ${Dockerpwd}' 
                        sh 'docker push pro/my-test'
                } 
            }
            }
        }
    }
}
