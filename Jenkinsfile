pipeline{
    agent { label 'master' }
    stages{
        stage ('in jenkins docker'){steps{
            echo "in jenkins"
            sh 'hostname -i'
        }
            
        }
        stage ('another docker') {
            agent {dockerfile true} 
            steps{
                echo "in ubuntu"
                sh 'hostname -i'
            }
        }
    }
    
    
}
