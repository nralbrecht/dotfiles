#!/bin/sh
cd /tmp
git clone git@github.com:abba23/spotify-adblock-linux.git
cd spotify-adblock-linux
wget -O cef.tar.bz2 https://cef-builds.spotifycdn.com/cef_binary_88.1.6%2Bg4fe33a1%2Bchromium-88.0.4324.96_linux64_minimal.tar.bz2
tar -xf cef.tar.bz2 --wildcards '*/include' --strip-components=1
make && mv spotify-adblock.so ~/.local/lib && echo "successfully updated spotify-adblock"
cd ..
rm -rf spotify-adblock-linux
