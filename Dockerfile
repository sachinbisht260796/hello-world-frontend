# Use a lightweight web server
FROM nginx:alpine
RUN apk add --no-cache bash git

# Copy frontend files to the web server
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY script.js /usr/share/nginx/html/script.js

# Expose port 80
EXPOSE 80
