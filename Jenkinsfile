@Library('rajat-shared-pipeline') _
pipeline{
 agent any
 stages{
    stage ('Checkout') {
     steps{
    checkout scm
     }
    }
  stage ('BuildMaven'){
   steps{
    mvnBuild('clean package --file my-app/pom.xml')
   }
  }
 }
}
