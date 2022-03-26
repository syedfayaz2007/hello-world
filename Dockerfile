# Pull base image 

FROM tomcat:9.0
LABEL maintainer="syebasha@example.com"

ADD ./webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]



