pipeline{
 agent none
 stages{
    stage ('Cleanup') {
     steps{
     parallel(
      a: {echo "this is windows a"}
      b: {echo "this is windows b"}
     )
     }
   }
 
 
 
 }

}
