pipeline{
    agent {
        label 'demo'
    }
    stages {
        stage('CLONE') {
            steps {
                 git branch: 'main' , url: 'https://github.com/gajendrank551/my-app.git' 
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
        stage('BUILD') {
            steps {
                sh 'mvn package'
            } 
        }
        stage('COPY') {
            steps {
                sh 'scp target/app.war dp@172.17.0.3:/home/dp/apache-tomcat-9.0.83/webapps'

            } 
        }
             
    } 
}

