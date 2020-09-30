FROM ubuntu

LABEL maintainer="laszlo.zoltan.kiss@gmail.com"

RUN apt-get update && \
apt-get install -y transmission-daemon

EXPOSE 9091/tcp
EXPOSE 51413/tcp
EXPOSE 51413/udp

CMD /etc/init.d/transmission-daemon start && tail -f /dev/null
