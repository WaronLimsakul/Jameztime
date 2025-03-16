#!/bin/bash

CHANNEL_URL="https://www.youtube.com/@JamesScholz"
BROWSER="firefox"

VIDEO_URL=$(yt-dlp --quiet --no-warnings --dump-json --flat-playlist --playlist-end 50 "$CHANNEL_URL" | 
  jq -r 'select(.duration >= 14400) | .webpage_url' |
  shuf -n 1)

if [ -z "$VIDEO_URL" ]; then
    echo "No videos longer than 4 hours found in the first 50 channel videos."
    exit 1
else
    echo "Opening random 4+ hour video: $VIDEO_URL"
    $BROWSER "$VIDEO_URL"
fi
