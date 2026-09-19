#!/bin/sh
echo "Updating E2iPlayer..."

rm -rf /tmp/e2iplayer-latest.zip /tmp/e2iplayer-extract
mkdir -p /tmp/e2iplayer-extract

wget --no-check-certificate -O /tmp/e2iplayer-latest.zip \
"https://github.com/alawam2/IPTVPlayer-update-arab/releases/download/latest/e2iplayer-latest.zip"

if [ ! -s /tmp/e2iplayer-latest.zip ]; then
    echo "ERROR: Download failed!"
    exit 1
fi

unzip -o /tmp/e2iplayer-latest.zip -d /tmp/e2iplayer-extract
if [ $? -ne 0 ]; then
    echo "ERROR: Unzip failed!"
    exit 1
fi

mkdir -p /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
cp -rf /tmp/e2iplayer-extract/* /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer/

rm -rf /tmp/e2iplayer-latest.zip /tmp/e2iplayer-extract
echo "Update completed successfully. Please restart Enigma2."
