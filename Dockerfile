FROM anapsix/alpine-java

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file from the local filesystem to the container's working directory
COPY target/spring-petclinic-2.1.0.war app.war

# Expose port 8080 to the outside world
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.war"]
