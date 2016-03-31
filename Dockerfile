############################################################
# Dockerfile to build auto-magic DHuS container images
############################################################

FROM debian
MAINTAINER Francesco DAloisio - fdaloisio@gmail.com

# installing dep
RUN apt-get update
RUN apt-get install -y zip openjdk-7-jre openjdk-7-jdk

# installing DHuS
RUN mkdir logs
COPY dhus-software-0.9.0-2-distribution.zip /
RUN unzip dhus-software-0.9.0-2-distribution.zip

# applying customization
COPY ./overlay/start.sh /
COPY ./overlay/etc/dhus.xml /etc/

EXPOSE 8081

CMD ["./start.sh" ]