#!/bin/bash

# Retrieve the path passed as the first argument
path=$1

# Check if the folder does not exist
if [ ! -d "$path" ] || [ -z "$(ls -A $path)" ]; then
    # Creating a new folder
    mkdir -p $path
fi
# Checks if the second argument is equal to -normal
if [ "$2" == "-normal" ]; then
    # Checks if "playlist?" is in the last argument
    if [[ ${!#} == *"playlist?"* ]]; then
        # Using yt-dlp with specific arguments for a playlist
        /home/user/yt-dlp -i -f mp4 -o "$path/%(playlist_index)s-%(title)s.%(ext)s" ${!#}
    else
        # Using yt-dlp with specific arguments for a video
        /home/user/yt-dlp -i -f mp4 -o "$path/%(title)s.%(ext)s" ${!#}
    fi
else
    # Using yt-dlp with the arguments passed in the command
    /home/user/yt-dlp "${@:2:$(($#-2))}" -o $path ${!#}
fi
