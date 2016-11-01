#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Downloading... "
    youtube-dl -x --audio-format mp3 $line 
done < "$1"