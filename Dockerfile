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
ADD https://github.com/SentinelDataHub/DataHubSystem/releases/download/0.9.0-2-hotfix-4/dhus-software-0.9.0-2-hotfix-4-distribution.shar .

RUN chmod +x dhus-software-0.9.0-2-hotfix-4-distribution.shar
RUN ./dhus-software-0.9.0-2-hotfix-4-distribution.shar


# applying customization
COPY ./overlay/start.sh /
COPY ./overlay/etc/dhus.xml /etc/

EXPOSE 8081

CMD ["./start.sh" ]
