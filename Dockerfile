FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app (including server.js and public/)
COPY . .

# Expose app port
EXPOSE 3000

# Run app
CMD ["npm", "start"]
