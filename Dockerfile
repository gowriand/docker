FROM ubuntu
MAINTAINER aspirantand
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install apache2
EXPOSE 80
COPY index.html /var/www/html/index.html
CMD ["apachectl", "-D", "FOREGROUND"]
