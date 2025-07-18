# Use the official Nginx image
FROM nginx:alpine

# Remove the default index.html
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html into the nginx html directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
