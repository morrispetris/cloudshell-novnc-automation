#!/bin/bash

wget https://persistent.oaistatic.com/codex-app-prod/linux/deb/latest/chatgpt_amd64.deb
apt install ./chatgpt_amd64.deb
#export DISPLAY=:1
#chatgpt --no-sandbox
exec su - zuser -c 'DISPLAY=:1 /usr/bin/chatgpt'
