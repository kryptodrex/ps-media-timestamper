#!/bin/bash

# DIRECTORY="Screenshots"
DIRECTORY="Video Clips"
FILETYPE="webm"

for folder in "./$DIRECTORY/"*; do

  echo $folder

  for file in "$folder"/*."$FILETYPE"; do

    echo $file

    # Extract the timestamp from the filename
    TIMESTAMP=$(basename "$file" ."$FILETYPE" | sed 's/.*_\(.*\)/\1/')
    # echo $file
    # echo $TIMESTAMP

    # Convert the timestamp to a format that touch can understand
    TOUCH_TIMESTAMP=$(date -j -f "%Y%m%d%H%M%S" "${TIMESTAMP}" +"%Y%m%d%H%M.%S")
    # echo $TOUCH_TIMESTAMP

    # Update the timestamp metadata of the image file
    touch -m -t "$TOUCH_TIMESTAMP" "$file"

  done

done

