#!/bin/bash

#### Don't touch below unless changes are needed ####

DIRECTORY="Media"

for folder in "./$DIRECTORY/"*; do

  echo ""
  echo "Updating timestamps in $folder"
  echo ""

  # for file in "$folder"/*."$FILETYPE"; do
  for file in "$folder"/*; do
    echo $file

    # Extract the timestamp from the file name
    TIMESTAMP=$(basename "$file" | grep -oE '[0-9]{14}')
    echo "Extracted timestamp: $TIMESTAMP"
    
    if [[ -n $TIMESTAMP ]]; then
      # Convert the timestamp to a format that touch can understand
      TOUCH_TIMESTAMP=$(date -j -f "%Y%m%d%H%M%S" "${TIMESTAMP}" +"%Y%m%d%H%M.%S")
      echo "Converted timestamp: $TOUCH_TIMESTAMP"
      
      # Update the timestamp metadata of the file
      cp -a "$file" "$file.tmp" && mv "$file.tmp" "$file" && touch -mt "$TOUCH_TIMESTAMP" "$file"
      echo "Timestamp updated"
    else
      echo "No timestamp found in file name"
    fi

    echo ""

  done

  echo "Completed updating timestamps in $folder"
  echo ""

done

