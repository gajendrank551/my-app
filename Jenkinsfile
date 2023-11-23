pipeline {
    agent {
        label 'app' 
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
                script {
                    def ip = '172.17.0.3' 
                    if(ip == '172.17.0.3'){
                        sh 'scp target/app.war dilip@172.17.0.3:/home/Dk/apache-tomcat-9.0.83/webapps'
                    } 
                    else {
                        sh 'scp target/app.war dilip@172.17.0.4:/home/Dk/apache-tomcat-9.0.83/webapps'
                    }
                }
                
            }
        } 
        //stage('Build-Docker') {
            //steps {
                //sh 'docker build -t myapp .'
            //}
    }
}
