FROM ubuntu:22.04 AS builder

# Set working directory
WORKDIR /app

# Final image with OpenJDK
FROM openjdk:11-jdk

# Install Salesforce CLI (official method)
FROM salesforce/cli:2.16.2-slim

# Verify installation again
RUN sf --version

# Copy JAR file
COPY sfdxlean.jar /app/sfdxlean.jar

# Copy entry script
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Set default command
ENTRYPOINT ["/app/entrypoint.sh"]