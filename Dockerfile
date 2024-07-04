# Use an official Alpine Linux base image
FROM alpine:3.18

# Set environment variables for Trivy version
ENV TRIVY_VERSION=v0.18.3

# Install necessary packages and Trivy
RUN apk add --no-cache \
    curl \
    && curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin ${TRIVY_VERSION} \
    && apk del curl

# Set the working directory
WORKDIR /app

# Copy scripts if you have any (optional)
# COPY script.sh /app/

# Define the entry point for the container
ENTRYPOINT ["trivy"]

# Default command to show help
CMD ["--help"]
