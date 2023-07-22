FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY /var/lib/jenkins/workspace/Java-Project-1/target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8082
CMD ["catalina.sh", "run"]
