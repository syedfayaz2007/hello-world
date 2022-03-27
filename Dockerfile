# Pull base image 

FROM tomcat:9.0
LABEL maintainer="syebasha@example.com"

RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

ADD webapp/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]



