# Use the official Nginx image as a base image
FROM nginx:alpine

# Remove the default nginx static resources
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the Nginx web directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Copy the Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

