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
         stage('DEPLOY') {
            steps {
                sh 'scp target/app.war gk@172.17.0.2:/home/gk/apache-tomcat-9.0.83/webapps'
            }
        }  

        stage('archiveArtifacts') {
            steps{
                archiveArtifacts artifacts: 'target/app.war', followSymlinks: false
            }
        }  
    }
}
