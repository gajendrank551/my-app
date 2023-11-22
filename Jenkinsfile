pipeline {
    agent {
        label 'app' //should add node label name is "app" IP = 172.17.0.2
    } 

    triggers{ 
        pollSCM '* * * * *'
    } 

    environment {
        //MY_PATH = "/target/app.war" 
        //MY_CONTAINER = "/home/Dk/apache-tomcat-9.0.83/webapps"
    } 

    parameters {
        choice(choices: ["172.17.0.3", "172.17.0.4"], description:"Deploying a app.war", name:"Deploy")
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
                sh 'scp target/app.war dilip@${params.Deploy}:/home/Dk/apache-tomcat-9.0.83/webapps'
            }
        } 
        stage('Build-Docker') {
            steps {
                sh 'docker build -t myapp .'
            }
        }
    }
}