#!/bin/sh

xrandr \
  --output DP-2 --mode 1920x1080 --pos 1080x1080 --primary \
  --output DP-0 --mode 1920x1080 --above DP-2 \
  --output DP-4 --mode 1920x1080 --pos 0x400 --rotate right
