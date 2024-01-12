pipeline {
    agent any 

    stages {
        stage('CLONE') {
            steps {
                git branch: 'main', url: 'https://github.com/gajendrank551/my-app.git'
            } 
        }
        stage('CLEAN') {
            steps {
                sh 'mvn clean' 
                sh 'mvn compile'
            }
        } 

        stage('TEST') {
            steps {
                sh 'mvn test'
            }
        } 
        stage('Checkstyle Analysis') {
            steps{
                sh 'mvn checkstyle:checkstyle'
            }
        }   
        stage('BUILD') {
            steps {
                sh 'mvn package'
            }  
        } 
        stage('DOCKER IMAGE') {
            steps {
                sh 'docker build -t gaja070/app:${BUILD_NUMBER} .  '
            }  
        }  
        stage('docker push') {
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'docker')]) {
                        sh 'docker login -u gaja070 -p ${docker}'
                } 
                sh 'docker push gaja070/app:${BUILD_NUMBER}'
            } 
        }
    }
    }
    
    
}

