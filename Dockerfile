# Use a specific, stable version of Nginx to ensure consistency
FROM nginx:stable-alpine

# Remove default Nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy the static website files to the Nginx HTML directory
COPY ./ /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]