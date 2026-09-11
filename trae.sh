#!/bin/bash

wget https://lf-cdn.trae.ai/obj/trae-ai-us/pkg/app/releases/stable/2.3.73738/linux/TraeCode-linux-arm64.deb
apt install ./TraeCode-linux-arm64.deb
#export DISPLAY=:1
#zcode --no-sandbox
su - zuser -c 'DISPLAY=:1 /usr/bin/trae'
