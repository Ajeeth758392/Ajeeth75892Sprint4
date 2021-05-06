      node{ def dockerImageName= 'ajeeth758392/javadedockerapp_$JOB_NAME:$BUILD_NUMBER'
      stage('SCM Checkout'){
         git 'https://github.com/LovesCloud/java-groovy-docker'
      }
      stage('Build'){
         // Get maven home path and build
         def mvnHome =  tool name: 'maven', type: 'maven'   
         sh "${mvnHome}/bin/mvn package -Dmaven.test.skip=true"
      }       
     
     stage ('Test'){
         def mvnHome =  tool name: 'maven', type: 'maven'    
         sh "${mvnHome}/bin/mvn verify; sleep 3"
      }
      
     stage('Build Docker Image'){         
           sh "echo '24081991' | sudo -S docker build -t ${dockerImageName} ."
      }  
   
     stage('Publish Docker Image'){
         withCredentials([string(credentialsId: 'dockerpwdajeeth', variable: 'dockerPWD')]) {
              sh "echo '24081991' | sudo -S docker login -u ajeeth758392 -p ${dockerPWD}"
         }
        sh "echo '24081991' | sudo -S docker push ${dockerImageName}"
      }
      
    stage('Run Docker Image'){
          sh "sudo -S docker run -p 8083:8080 -d --name ${dockerContainerName} ${dockerImageName}"       
      }     
  }
