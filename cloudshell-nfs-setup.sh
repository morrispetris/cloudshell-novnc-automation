#!/bin/bash
# cloudshell-nfs-setup.sh
set -a
source ./.env
set +a

#sudo apt-get update && sudo apt-get install -y nfs-common
sudo apt-get install -y nfs-common
which tailscale || curl -fsSL https://tailscale.com/install.sh | sh
#sudo tailscaled --state=$HOME/tailscaled.state --socket=$HOME/tailscaled.sock &
#sudo tailscaled --state=$HOME/tailscaled.state --socket=$HOME/tailscaled.sock > $HOME/tailscaled.log 2>&1 &
#sudo stdbuf -oL -eL tailscaled --state=$HOME/tailscaled.state --socket=$HOME/tailscaled.sock 2>&1 | tee $HOME/tailscaled.log &
#sleep 2
sudo tailscaled --state=$HOME/tailscaled.state --socket=$HOME/tailscaled.sock > $HOME/tailscaled.log 2>&1 &
tail -f $HOME/tailscaled.log &
TAIL_PID=$!
sleep 2
kill $TAIL_PID 2>/dev/null

sudo tailscale --socket=$HOME/tailscaled.sock up --authkey="${TS_AUTHKEY}" --hostname=cloud-shell
sudo mkdir -p /mnt/nfs-share
sudo mount -t nfs -o nolock 100.118.91.19:/export /mnt/nfs-share
