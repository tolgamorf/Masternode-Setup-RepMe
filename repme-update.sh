#!/bin/bash
echo "Stopping RepMed"
/usr/bin/repme-cli stop
echo "Waiting 30 seconds for RepMed to shutdown"
sleep 30
echo "Updating binaries"
cd ~/Masternode-Setup-RepMe
git reset --hard
git pull

sudo cp -f ~/Masternode-Setup-RepMe/RepMe/repmed /usr/bin/
sudo cp -f ~/Masternode-Setup-RepMe/RepMe/repme-cli /usr/bin/
sudo cp -f ~/Masternode-Setup-RepMe/RepMe/repme-tx /usr/bin/
echo "Launching RepMed"
sudo /usr/bin/repmed
