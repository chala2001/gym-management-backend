# Use Java 17 (same as your project)
FROM eclipse-temurin:17-jdk

# Create app directory inside container
WORKDIR /app

# Copy jar file into container
COPY target/GymManagementBackend-0.0.1-SNAPSHOT.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
