pipeline {
    agent {
        label 'app' 
    } 

    parameters {
        choice (choices: ['172.17.0.3 ', '172.17.0.4'], name: 'MY_IP')
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
                sh 'scp /home/Dk/workspace/my-pipeline/target/app.war dilip@${params.MY_IP}:/home/Dk/apache-tomcat-9.0.83/webapps'
            }
        } 
        //stage('Build-Docker') {
            //steps {
                //sh 'docker build -t myapp .'
            //}
        }
    }
