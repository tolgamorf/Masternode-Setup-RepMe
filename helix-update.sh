#!/bin/bash
echo "Stopping Helixd"
/usr/bin/helix-cli stop
echo "Waiting 30 seconds for Helixd to shutdown"
sleep 30
echo "Updating binaries"
cd ~/helix
git pull
./autogen.sh
./configure
make
sudo cp -f ~/helix/src/helix* /usr/bin/
echo "Launching Helixd"
sudo /usr/bin/helixd
