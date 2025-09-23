# Use an official Java runtime as base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Accept JAR file as build argument
ARG JAR_FILE

# Copy the dynamically detected JAR into the container
COPY ${JAR_FILE} app.jar

# Expose the application port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
