pipeline {
   agent any
     stages {
       stage('code') {
          steps {
            git branch:'master',url:'https://github.com/rahullbarik/web-apps.git'
          }
       } 
       stage('build') {
          steps {
            sh "mvn clean package"  // Builds the WAR file
          }
       }
       stage('Docker Build') {
          steps {
            sh 'docker build -t tomcatimg .'
          }
       }
       stage('Deploy') {
          steps {
            sh 'docker stop tomcat-container || true'
            sh 'docker rm tomcat-container || true'
            sh 'docker run -d -p 8081:8080 --name tomcat-container tomcatting'
          }
       }
    }
}
