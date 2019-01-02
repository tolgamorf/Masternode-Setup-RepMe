#!/bin/bash
echo "Stopping Helixd"
helix-cli stop
echo "Waiting 30 seconds for Helixd to shutdown"
sleep 30
echo "Updating binaries"
sudo cp -f helix-v1.1.0/helix* /usr/bin/
echo "Launching Helixd"
sudo helixd
