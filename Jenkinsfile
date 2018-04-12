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
                sh 'mvn clean deploy -f my-app/pom.xml'
                //archiveArtifacts 'my-app/target/*.jar'
                stash includes: '**/*/*.jar', name: 'artifacts'
                }
            }
        stage('Delete dirs '){steps {deleteDir()}}
        stage('Unstashing Artifacts'){
            steps{
                sh 'pwd'
                sh 'hostname'
                sh 'ls -ltr'
                unstash 'artifacts'
                sh 'ls -ltr'
                }
            }        
        }
    post{
        always{ echo "in always "}
        failure{echo "in failure "}
        success{echo "in success "}
        unstable{echo "in unstable "}
        changed{echo "in changed "}
        }
    }
