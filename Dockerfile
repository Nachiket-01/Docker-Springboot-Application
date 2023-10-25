FROM openjdk:17
WORKDIR /app
COPY target/Assignment-3-0.0.1-SNAPSHOT.war app.war
EXPOSE 8089
CMD ["java", "-war", "app.war"]