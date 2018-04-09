pipeline {
    agent {label 'kubernetes-node'}
    environment{
        FOO = "BAR"
        MODULE = "my-app"
    }
    stages{
        stage('Checkout'){ 
            steps{checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/bansalrajat/maven-hello-world.git']]])
            }
        }
        stage('Build'){
            steps{ sh "/var/jenkins/tools/apache-maven-3.5.2/bin/mvn clean package --file ${MODULE}/pom.xml"  }
        }
        stage ('archiveArtifacts'){steps{
            archiveArtifacts "${MODULE}/target/${MODULE}-*.jar"

            
            
        }}
        stage('Pehla Padaav'){
            steps{
                echo "Aap pehle padaav me hai "
                script {MYVAR = "PEHLE VAR"}
            }
        }
        stage ('DOOSRA Padaav'){
            steps {
                echo "BHai saab sahi ahi "
                echo " doosre padaav mein : ${MYVAR} jee baat!!"
                echo " doosre padaav mein : ${FOO} jee baat!!"
            }
        }
    }
}
