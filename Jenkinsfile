pipeline {
    agent any

     stages {
        stage('CLONE') {
            steps {
                git branch: 'main', url: 'https://github.com/08dilipkumar/my-app.git'
            }
        }
        stage('CLEAN') {
            steps {
                sh 'mvn clean'
            }
        } 

        stage('TEST') {
            steps {
                sh 'mvn test'
            }
        }   
         stage('REPORT') {
            steps {
                sh 'mvn sonar:sonar'
            }
        }   
        stage('BUILD') {
            steps {
                sh 'mvn package'
            }
        }   
    }
}
