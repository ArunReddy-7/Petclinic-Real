# Use an official Apache Tomcat image as a base
FROM tomcat:9-alpine

RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the packaged WAR file into the webapps directory of Tomcat
COPY target/petclinic.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Tomcat's default port)
EXPOSE 8080

CMD ["catalina.sh", "run"]
