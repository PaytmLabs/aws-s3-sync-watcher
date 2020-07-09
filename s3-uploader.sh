#!/usr/bin/bash
set -euo pipefail

SOURCE_DIR="$1"
S3_PATH="$2"
timestamp=$(date "+%s") 
inotifywait -m /"$SOURCE_DIR" -e close_write | \
while read -r path action file; do 
  echo "$path$file is detected"
  aws s3 cp "$path$file" "$S3_PATH"/"$file"_"$timestamp" 
  rm "$path$file" 
done