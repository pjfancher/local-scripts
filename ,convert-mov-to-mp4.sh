#!/bin/bash

# Exit if any command fails
set -e

# Check if input is provided
if [ -z "$1" ]; then
  echo "Usage: $0 input.mov"
  exit 1
fi

# Get the input file and strip the extension for output
input="$1"
output="${input%.*}.mp4"

# Run ffmpeg conversion
ffmpeg -i "$input" -vcodec libx264 -crf 23 -preset slow -acodec aac "$output"

echo "Conversion complete: $output"
