# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN npm install

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
