pipeline{
    agent { label 'master' }
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
            }
        }
    }
    
    
}
