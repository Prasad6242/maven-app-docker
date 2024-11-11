# Use a specific version of Tomcat as base image
FROM tomcat:8.5-jre8

# Expose port 8080 to access the application
EXPOSE 8080

# Copy your web application WAR file to the Tomcat webapps directory
COPY ./my-app.war /usr/local/tomcat/webapps/

# Set the default command to run Tomcat
CMD ["catalina.sh", "run"]
