#!/bin/bash

wget https://cdn-zcode.z.ai/zcode/electron/releases/3.11.2/linux-x64/ZCode-3.11.2-linux-x64.deb
apt install ./ZCode-3.11.2-linux-x64.deb
#export DISPLAY=:1
#zcode --no-sandbox
su - zuser -c 'DISPLAY=:1 /opt/ZCode/zcode'
