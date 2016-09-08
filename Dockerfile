############################################################
# Dockerfile to build auto-magic DHuS container images
############################################################

FROM openjdk:7

MAINTAINER Francesco DAloisio - fdaloisio@gmail.com

# installing DHuS
RUN mkdir logs

ADD https://github.com/SentinelDataHub/DataHubSystem/releases/download/0.9.0-2-hotfix-4/dhus-software-0.9.0-2-hotfix-4-distribution.shar .

RUN chmod +x dhus-software-0.9.0-2-hotfix-4-distribution.shar
RUN ./dhus-software-0.9.0-2-hotfix-4-distribution.shar

RUN sed -i -- 's/Xms..g/Xms512m/g; s/Xmx..g/Xmx512m/g' start.sh
RUN sed -i -- 's/local_dhus/\/local_dhus\/var/g; ' etc/dhus.xml


EXPOSE 8081

CMD ["./start.sh" ]
