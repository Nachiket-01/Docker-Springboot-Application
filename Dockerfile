

# Use the official Tomcat 9 image as the base image
FROM tomcat:9-jre17

# Remove the default Tomcat applications to deploy your .war file
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your .war file into the Tomcat webapps directory
COPY Assignment-3-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/Assignment-3-0.0.1-SNAPSHOT.war

# (Optional) Set environment variables if needed
# ENV VARIABLE_NAME=value

# Expose port 8089
EXPOSE 8089
CMD ["java", "-war", "app.war"]

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
