#!/bin/bash

# Uncomment the directory you want the script to run in
DIRECTORY="Screenshots"
# DIRECTORY="Video Clips"

# Uncomment the media filetype you want to update timestamps for
# (or, if the one you need isn't here, just add it)
FILETYPE="jpg"
# FILETYPE="webm"
# FILETYPE="mp4"


#### Don't touch below unless changes are needed ####

for folder in "./$DIRECTORY/"*; do

  echo "Updating timestamps in $folder"

  for file in "$folder"/*."$FILETYPE"; do

    # echo $file

    # Extract the timestamp from the filename
    TIMESTAMP=$(basename "$file" ."$FILETYPE" | sed 's/.*_\(.*\)/\1/')
    # echo $TIMESTAMP

    # Convert the timestamp to a format that touch can understand
    TOUCH_TIMESTAMP=$(date -j -f "%Y%m%d%H%M%S" "${TIMESTAMP}" +"%Y%m%d%H%M.%S")
    # echo $TOUCH_TIMESTAMP

    # Update the timestamp metadata of the image file
    touch -m -t "$TOUCH_TIMESTAMP" "$file"

  done

done

