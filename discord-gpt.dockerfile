# Set the base image to the official Node.js v20 Alpine image
FROM node:20-alpine

# Create a directory for your app
WORKDIR /app

# Copy your package.json and package-lock.json to the container
COPY package*.json ./

# Install your app's dependencies
RUN npm install --production

# Copy all app files to the container
COPY . .

# Specify the command to run your app
CMD ["node", "index.js"]
