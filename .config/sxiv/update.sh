#!/bin/sh

cd /tmp
git clone git@github.com:muennich/sxiv.git || exit 1
cd sxiv
cp $HOME/.config/sxiv/config.h .
sudo make install || exit 2
