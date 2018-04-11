pipeline{
    agent { label 'docker-master' }
    tools {
       maven 'm3'
    }   
    stages{
        stage ('Clean Workspace'){
            steps{
                cleanWs()
            }
        }
        stage ('Checkout code'){
            steps{
                checkout scm 
            }
        }
        stage ('Builder1 Info'){
            steps{
                echo "in jenkins"
                sh 'hostname -i'
                sh 'mvn --version'
                }
        }            
        stage ('Builder2 Info'){
            agent {dockerfile {args '-v /var/jenkins/tools:/var/jenkins/tools  -v /var/jenkins/.m2:/var/jenkins/.m2'}}
            steps{
                echo "in ubuntu"
                sh 'hostname -i'
                sh 'mvn clean compile -f my-app/pom.xml'
            }
        }
    }
    
    
}
