FROM ubuntu:14.04
MAINTAINER eric.lin <eric.lin@orbweb.com>

RUN apt-get update -y
RUN apt-get upgrade -y
RUN mkdir -p /opt

WORKDIR /opt

COPY emqttd /opt/
WORKDIR /opt/emqttd
COPY emqttd.sh  /etc/init.d/emqttd
RUN chmod +x /etc/init.d/emqttd



EXPOSE 1883 8883 8083 18083

CMD ["/etc/init.d/emqttd","start"]
