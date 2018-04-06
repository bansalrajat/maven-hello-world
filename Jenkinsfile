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
    script{    mvnBuild clean build}
   
   }
  }
 
 
 
 }

}
