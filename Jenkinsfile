pipeline{
    agent { label 'master' }
    tools {
        mvnHome = tool name: 'm3'
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
                }
        }            
        stage ('Builder2 Info'){
            agent {dockerfile true}
            steps{
                echo "in ubuntu"
                sh 'hostname -i'
                sh 'mvn clean compile -f my-app/pom.xml'
            }
        }
    }
    
    
}
