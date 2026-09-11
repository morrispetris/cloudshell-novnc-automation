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

# Create normal desktop user
RUN useradd -m -s /bin/bash zuser \
    && usermod -aG sudo zuser \
    && echo 'zuser ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/zuser \
    && chmod 0440 /etc/sudoers.d/zuser

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80

CMD ["/usr/bin/supervisord"]
