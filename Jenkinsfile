pipeline {
    agent {label 'kubernetes-node'}
    environment{
        FOO = "BAR"
        MODULE = "my-app"
        def mvnHome = "tool name: 'm3'"
    }
    stages{
        stage('CleanWs'){steps {cleanWs()}}
        stage('Checkout'){ 
            steps{checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/bansalrajat/maven-hello-world.git']]])
            }
        }
        stage('Build'){
            //node ("kubernetes-node"){
            steps{
                node ("master"){
                    echo "build"
                    checkout scm
                    echo "$mvnHome"
                    bat "mvn -v"
                //bat "D:\\softwares\\apache-maven-3.5.2-bin\\apache-maven-3.5.2\\bin\\mvn -v"
                //sh "/var/jenkins/tools/apache-maven-3.5.2/bin/mvn clean package --file ${MODULE}/pom.xml"  
            }
            }
        }
        stage ('archiveArtifacts'){steps{
        //    archiveArtifacts "${MODULE}/target/${MODULE}-*.jar"
        
        parallel (a: {node ("master") { sh 'hostname' }} , b: {echo 'in b' ; sh 'ifconfig' })}}
        
        stage ('Upload to Nexus'){steps {
         
         echo "This is nexus upload"   
            
        } 
        }
    }
}
