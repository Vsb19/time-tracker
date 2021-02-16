pipeline
{
    tools
    {
        jdk 'my-java'
        maven 'my-maven'
        
    }
    
    agent any
    stages 
    {
        stage ('Git-Checkout')
        {
            agent any
            steps
            {
                git 'https://github.com/Vsb19/time-tracker.git'
            }
            
        }
        stage ('Compiling The Code')
        {
            agent any
            steps
            {
                sh 'mvn compile'
            }
        }
         
        stage ('Executing Test Cases')
        {
            agent any
            steps
            {
                sh 'mvn test'
            }
        }
        stage ('Creating War File')
        {
            agent any
            steps
            {
                sh 'mvn package'
            }
        }
        stage ("Deploying War File")
        {
            agent any
            steps
            {
                sshagent(['vsb-tomcat']) 
                 {
                 sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/TT-1@2/web/target/time-tracker-web-0.5.0-SNAPSHOT.war ec2-user@3.89.89.228:/opt/tommy/webapps'
                 }
            }
        }
        
    }
}
