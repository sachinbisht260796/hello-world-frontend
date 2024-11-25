# Base image: Use an Nginx server with Alpine
FROM nginx:alpine

# Install required tools: Bash, Git, Java (needed for Jenkins)
RUN apk add --no-cache bash git openjdk11

# Copy frontend files to the web server directory
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY script.js /usr/share/nginx/html/script.js

# Set up Jenkins environment
RUN addgroup -S jenkins && adduser -S jenkins -G jenkins
ENV JENKINS_HOME /var/jenkins_home
RUN mkdir -p $JENKINS_HOME && chown -R jenkins:jenkins $JENKINS_HOME

# Switch to Jenkins user
USER jenkins

# Expose ports for Nginx (80) and Jenkins (8080)
EXPOSE 80 8080

# Specify the default command (if applicable)
CMD ["nginx", "-g", "daemon off;"]
