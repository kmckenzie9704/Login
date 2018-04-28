node {
	    stage('Checkout') { 
	         checkout scm 
	     } 
  
		stage('Initialize'){
			def dockerHome = tool 'myDocker' 
	        def mavenHome  = tool 'myMaven' 
	        env.PATH = "${dockerHome}/bin:${mavenHome}/bin:${env.PATH}" 
		}


        stage('Build') {
	        sh "mvn -B -DskipTests clean package"
//            sh "mvn -B -Dmaven.test.failure.ignore=true clean package"
//            junit 'target/surefire-reports/**/*.xml'
        }

		 stage('Copy WAR Image') {
	 		sh "ls -al"
			sh "cp target/*.war /home/ken/eclipse-workspace/TimeManagement/LoginNew/LoginNew/target/LoginNew.war"
		}

		 stage('Create Docker Image') {
		      sh "docker build -t LoginNew:latest  -t LoginNew:latest --pull --no-cache ."
		}

}