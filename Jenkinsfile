@Library('rajat-shared-pipeline') _
pipeline{
 agent none
 stages{
    stage ('Cleanup') {
     steps{
     parallel(
      'a': {echo "this is windows a"},
      'b': {echo "this is windows b"}
     )
     }
    }
  stage ('BuildMaven'){
   steps{
    script{   mvnBuild clean install}
   
   }
  }
 
 
 
 }

}
