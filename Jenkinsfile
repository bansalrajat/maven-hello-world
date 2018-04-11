pipeline{
    agent { label 'master' }
    stages{
        stage ('Clean Workspace'){ cleanWs()}
        stage ('Checkout code'){checout scm 
            
                
                echo "in jenkins"
                sh 'hostname -i'
                }
            
        stage ('another docker'){
            agent {dockerfile true}
            steps{
                echo "in ubuntu"
                sh 'hostname -i'
            }
        }
    }
    
    
}
