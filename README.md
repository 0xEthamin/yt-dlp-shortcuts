# yt-dlp-shortcuts LINUX
a script that allows to use yt-dlp quickly

yt [PATH] [OPTIONS] [URL]

## INSTALL
1) download yt-dlp from github https://github.com/yt-dlp/yt-dlp/releases
2) place the binary where you want
3) add permission to execute `chmod +x [binary name]`
4) edit the script to put the correct path where you see `/home/user/yt-dlp`
5) put the script in your path so you can use it from anywhere
`sudo cp ./yt.sh /usr/local/bin/yt`

## DESCRIPTION
The yt script allows to download videos from YouTube using yt-dlp.

## ARGUMENTS
[PATH]
Allows to specify the folder where the videos will be downloaded. If the folder does not exist, it will be created.

[URL]
URL of the video or playlist to download.

## OPTIONS
[-normal]
my preferences. But you can modify the script for you
Uses yt-dlp with specific arguments to download a video or playlist depending on the given URL. If it is a playlist, videos will be downloaded with a numbered filename in the order of the playlist and in MP4 format. If it is a video, the title of the video will be used as filename and in MP4 format.

playlist:
yt-dlp -i -f mp4 -o "[PATH]/%(playlist_index)s-%(title)s.%(ext)s" [URL]

just video:
yt-dlp -i -f mp4 -o "[PATH]/%(title)s.%(ext)s" [URL]

