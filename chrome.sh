#!/bin/bash

apt install -y wget gnupg ca-certificates
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./google-chrome-stable_current_amd64.deb
#export DISPLAY=:1
#google-chrome \
#  --no-sandbox \
#  --disable-dev-shm-usage \
#  --remote-debugging-port=9222
exec su - zuser -c 'DISPLAY=:1 /usr/bin/google-chrome --disable-dev-shm-usage   --remote-debugging-port=9222'
