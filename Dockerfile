FROM tomcat:8.0.51-jre8-alpine
MAINTAINER ajeeth Prabhu 758392 “ajeeth.pt@tcs.com"
COPY target/*.war /usr/local/tomcat/webapps/

