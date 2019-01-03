#!/bin/bash
echo "Stopping Helixd"
/usr/bin/helix-cli stop
echo "Waiting 30 seconds for Helixd to shutdown"
sleep 30
echo "Updating binaries"
cd ~/helix
git reset --hard
git pull
./autogen.sh
./configure
make
sudo cp -f ~/helix/src/helixd /usr/bin/
sudo cp -f ~/helix/src/helix-cli /usr/bin/
sudo cp -f ~/helix/src/helix-tx /usr/bin/
echo "Launching Helixd"
sudo /usr/bin/helixd
