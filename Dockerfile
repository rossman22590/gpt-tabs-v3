# Set the base image
FROM node:18-alpine

# Create a working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application using the --host flag to bind to all network interfaces
CMD ["npm", "start", "--", "--host", "0.0.0.0"]
