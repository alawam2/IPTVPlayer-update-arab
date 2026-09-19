#!/bin/sh
echo "Updating E2iPlayer..."
wget -q --no-check-certificate -O /tmp/e2iplayer-latest.zip "https://github.com/alawam2/IPTVPlayer-update-arab/raw/main/e2iplayer-latest.zip"
unzip -o /tmp/e2iplayer-latest.zip -d /tmp/e2iplayer-extract
mkdir -p /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
cp -rf /tmp/e2iplayer-extract/* /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer/
rm -rf /tmp/e2iplayer-latest.zip /tmp/e2iplayer-extract
echo "Update completed. Please restart Enigma2."