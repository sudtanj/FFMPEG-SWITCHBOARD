exist=$(which ffmpeg)
if [ $? -ne 0 ]; then
sudo add-apt-repository ppa:mc3man/trusty-media -y
sudo apt-get update
sudo apt-get --yes --force-yes install ffmpeg
fi
youtube=$(livestreamer https://www.youtube.com/channel/UCkGKUwCY-dJFf-uBpPKXTHQ/live-c 720p --stream-url)
ffmpeg -i $youtube -ar 44100 -vcodec libx264 -r 25 -b:v 500k -f flv rtmp://ingest-us-west.a.switchboard.zone/live/sudtanj-gqeq8-zkh3u-nsmyg-442dq
