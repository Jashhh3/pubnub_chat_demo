# Use official Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to nginx public directory
COPY public/ /usr/share/nginx/html/

# Expose default port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
