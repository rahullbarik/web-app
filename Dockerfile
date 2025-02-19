FROM tomcat:8.0.20-jre8
MAINTAINER Rahul Barik
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
