FROM node:18-alpine
WORKDIR /app

# Copy package files first
COPY package*.json /app/

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Expose port
EXPOSE 3000

CMD ["npm", "start"]
