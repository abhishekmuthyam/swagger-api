pipeline {
    agent any
	
    stages {
	    stage ('Initialize') {
			steps {
                		bat 'mvn --version'
				
            }			     
        }
       stage('Package') { 
            steps {
			      echo "Dev Build"
			      bat "mvn clean compile package -DskipTests"
            }
        }
	  stage('DEPLOY TO PCF') { 
            steps {
                echo 'pivotal'
                bat "cf login -a api.run.pivotal.io -o myapplications -s dev1 -u abhishekmuthyam@gmail.com -p Chinna23* --skip-ssl-validation"
	            	bat "cf push swagger-api"
            }
        } 
     }
}
