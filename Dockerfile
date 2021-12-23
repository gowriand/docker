# A Test Docker file

#MAINTAINER - declare author

# FROM - base docker image

#RUN to execute commands esp bash commands
#EXPOSE - specify a port number of container - mapping is done later

#ENV to set environment variable
#USER - the user who run the container

#VOLUME - set a custom file where the files of docker container on host
#ADD   copy files to container

#WORKDIR - set where the command defined with CMD to be executed

# CMD usually not executed during build
# ENTRYPOINT - override CMD - first command to exxecute after build
#################################################3
FROM ubuntu:12.04

MAINTAINER aspirant

RUN apt-get update && apt-get install -y apache2 && apt-get clean 

ENV APACHE_RUN_USER apache2
ENV APACHE_RUN_GROUP apache2
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

