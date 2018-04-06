@Library('rajat-shared-pipeline') _
pipeline{
 agent none
 stages{
    stage ('Cleanup') {
     steps{
      
     parallel(
      'a': {echo "this is windows a"},
      'b': {checkout scm}
     )
     }
    }
  stage ('BuildMaven'){
   steps{
    script{    mvnBuild clean build}
   
   }
  }
 
 
 
 }

}
