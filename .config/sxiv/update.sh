#!/bin/sh

cd /tmp
if [ ! -d "sxiv" ]; then
	git clone git@github.com:muennich/sxiv.git || exit 1
fi
cd sxiv
cp $HOME/.config/sxiv/config.h .
sudo make install || exit 2
