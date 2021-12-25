############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER aspirantand

# Add repository and  install nginx
#RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y nginx  && apt-get install -y vim net-tools
COPY html /var/www/html

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
#CMD sleep 1 && /etc/init.d/nginx start
#CMD /usr/sbin/nginx -g "daemon off;"
CMD ["nginx", "-g", "daemon off;"]




