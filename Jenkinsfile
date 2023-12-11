pipeline
{
    agent{ label 'demo' 
    }
    stages
    {
        stage("clone")
        {
            steps
            {
                git branch: "main", url: "https://github.com/gajendrank551/my-app.git"
            }
        }
        stage("clean")
        {
            steps
            {
           sh "mvn clean"
            }
        }
        stage("compile")
        {
            steps
            {
           sh "mvn compile"
            }
        }
        stage("TEST")
        {
            steps
            {
           sh "mvn test"
            }
        }
        stage("build")
        {
            steps
            {
           sh "mvn package"
            }
        }
         stage("DEPLOY")
        {
            steps
            {
                sh "scp target/app.war gj@172.17.0.4:/home/gajendra/apache-tomcat-9.0.82/webapps"

            }
            
        }
    }
}

