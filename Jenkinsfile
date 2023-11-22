pipeline {
    agent any

    triggers{ 
        pollSCM '* * * * *'
    } 

    parameters {
        choice choices: ['172.17.0.3', '172.17.0.4'], description: 'IP', name: 'Demo'
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
                sh 'scp target/app.war dilip@${params.Demo}:/home/Dk/apache-tomcat-9.0.83/webapps'
            }
        } 
        stage('Build-Docker') {
            steps {
                sh 'docker build -t myapp .'
            }
        }
    }
}