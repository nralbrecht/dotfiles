#!/bin/zsh

# TEMP=($(find -O3 $(realpath ".") -regextype posix-extended -type f -iregex '.*\.(jpg|jpeg|png|gif)' -printf ''%p'\n' | sort -R | head -n 1000))
# TEMP=($(find -O3 $(realpath ".") -regextype posix-extended -type f -iregex '.*\.(jpg|jpeg|png|gif)' -printf ''%p'\n' | head -n 1000))
TEMP=($(find -O3 $(realpath ".") -regextype posix-extended -type f -iregex '.*\.(jpg|jpeg|png|gif)' -printf ''%p'\n'))
sxiv "${TEMP[@]}"
