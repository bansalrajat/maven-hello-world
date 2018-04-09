pipeline {
    agent {label 'kubernetes-node'}
    environment{
        FOO = "BAR"
        MODULE = "my-app"
    }
    stages{
        stage('Build'){
            steps{mvn clean package --file ${MODULE}/pom.xml  }
        }
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
