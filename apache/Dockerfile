FROM ubuntu
MAINTAINER aspirantand
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install apache2
EXPOSE 8081
COPY ports.conf /etc/apache2/ports.conf
COPY html /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
