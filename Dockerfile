FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/
COPY target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ABCtechnologies-1.0.war
EXPOSE 8080 
CMD ["catalina.sh", "run"]