# PlayStation Media Timestamper

## What is it for?
When exporting media onto a USB from a PlayStation, it does not come over with the proper timestamp of when it was actually created. However, the media's file name has the timestamp inside it.

Having this available, I wrote a script to pull that out and update the file's timestamp. The script will iterate through each sub folder you place in the Screenshots or Video Clips folder and update all the timestamps.

## How to use

1. After cloning this repository locally, you can directly drop your 'Screenshots' and 'Video Clips' folders from the PlayStation media export into the folder (make sure they are at the same level as `timestamper.sh`).

2. In the `timestamper.sh` file, follow the directions to uncomment the proper directory and filetype you need (simply remove the `#` from the front of `DIRECTORY` or `FILETYPE` at the top of the file).

3. On your computer's terminal, first `cd` into the directory containing the `timestamper.sh` file 

4. After doing the above, enter the following commands in your command line to run the `timestamper.sh` file:

    `chmod +x timestamper.sh`
    
    `sh timestamper.sh`

5. Check your files, and they should be timestamped properly now! :)