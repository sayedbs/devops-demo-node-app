# Use an official Node.js runtime as a base image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (if available)
COPY package*.json ./

# Install dependencies (including devDependencies if needed)
# By default, npm install will install both dependencies and devDependencies
RUN npm install

# Copy application source code
COPY . .

# Expose port (if your app runs a server, adjust accordingly, e.g., 3000)
EXPOSE 3000

# Default command (adjust to your app’s entry file)
CMD ["node", "index.js"]
