#!/bin/bash
echo "Stopping Helixd"
/usr/bin/helix-cli stop
echo "Waiting 30 seconds for Helixd to shutdown"
sleep 30
echo "Updating binaries"
cd ~/Masternode-Setup-Helix
git reset --hard
git pull

sudo cp -f ~/Masternode-Setup-Helix/Helix/helixd /usr/bin/
sudo cp -f ~/Masternode-Setup-Helix/Helix/helix-cli /usr/bin/
sudo cp -f ~/Masternode-Setup-Helix/Helix/helix-tx /usr/bin/
echo "Launching Helixd"
sudo /usr/bin/helixd
