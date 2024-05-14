# Use Alpine Linux as base image
FROM alpine

# Set working directory to /home
WORKDIR /home

# Copy the build folder to the /home directory
COPY build /home/build

# Expose port 3000
EXPOSE 3000

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Install serve package globally
RUN npm install -g serve

# Set the command to run when the container starts
ENTRYPOINT ["serve", "-s", "build"]

