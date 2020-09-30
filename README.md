# transmission_client
Transmission in Docker container

### Create folders for downloads and change permissions in your native system:

mkdir /media/hdd/torrent-downloads

chmod 777 /media/hdd/torrent-downloads

### Build image:

docker build -t transmission_client .

### Run container:

docker run -d -p 9091:9091/tcp -p 51413:51413/tcp -p 51413:51413/udp \
--mount type=bind,source=/media/hdd/torrent-downloads,target=/var/lib/transmission-daemon/downloads/  \
--mount type=bind,source=/etc/transmission-settings.json,target=/var/lib/transmission-daemon/.config/transmission-daemon/settings.json \
--name transmission_client-1 \
transmission_client
