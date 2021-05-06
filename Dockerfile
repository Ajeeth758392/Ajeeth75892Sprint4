FROM tomcat:8.0.51-jre8-alpine
MAINTAINER “ajeeth.pt@tcs.com"
LABEL maintainer=“Ajeeth Prabhu Thallur“
COPY target/*.war /usr/local/tomcat/webapps/
RUN apt-get install -y git

