# PlayStation Media Timestamper

## What is it for?
When exporting media onto a USB from a PlayStation, it does not come over with the proper timestamp of when it was actually created. However, the media's file name has the timestamp inside it.

Having this available, I wrote a script to pull that out and update the file's timestamp. The script will iterate through each sub folder you place in the Screenshots or Video Clips folder and update all the timestamps.

## How to use

1. In the `timestamper.sh` file, follow the directions to uncomment the proper directory and filetype you need

2. On your computer's terminal, first `cd` into the directory containing the `timestamper.sh` file 

3. Enter the following commands after the above in your command line to run the `timestamper.sh` file:

    `chmod +x timestamper.sh`
    
    `sh timestamper.sh`