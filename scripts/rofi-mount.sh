#!/usr/bin/env bash

# Mount an drive to media
# rofi -show mount -modi mount:~/.config/rofi/rofi-mount.sh

if [ -z $@ ]
then
    lsblk -al -o NAME,FSTYPE,SIZE,FSAVAIL,TYPE,MOUNTPOINT
else
    DRIVE=$(echo $@ | awk '{print $1;}')

    if [ -n "${DRIVE}" ] && [ "${DRIVE}" != "NAME" ]
    then
        udevil mount "/dev/sda1" /media/usb
        echo "test: \"$DRIVE\""
    fi

    lsblk -al -o NAME,FSTYPE,SIZE,FSAVAIL,TYPE,MOUNTPOINT
fi
