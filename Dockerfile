FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/
COPY /target/* /usr/local/tomcat/webapps/*
EXPOSE 8080 
CMD ["catalina.sh", "run"]