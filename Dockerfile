FROM nginx:alpine

# Copy the HTML file to Nginx's default directory
COPY index.html /usr/share/nginx/html/

# Copy the CSS, JS, and image folders to their respective locations in Nginx
COPY css/style.css /usr/share/nginx/html/css/
COPY js/script.js /usr/share/nginx/html/js/
COPY images/ /usr/share/nginx/html/images/

# Expose port 80 for the web server
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
