FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    lxde \
    lxterminal \
    novnc \
    websockify \
    x11vnc \
    xvfb \
    supervisor \
    wget \
    curl \
    ca-certificates \
    git \
    sudo \
    && apt clean

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80

CMD ["/usr/bin/supervisord"]
