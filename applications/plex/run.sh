#!/bin/bash
MOUNTPATH=core
SERVER=192.168.1.3
FOLDER=Filer
SMBUSER=fredrik
SMBPASSWORD=Hartass2
docker rm -f lizardfs-plex
docker run -it -d -p 32400:32400 --name lizardfs-plex --privileged --network lizardfs -e MOUNTPATH=$MOUNTPATH -e SERVER=$SERVER -e FOLDER=$FOLDER -e SMBUSER=$SMBUSER -e SMBPASSWORD=$SMBPASSWORD lowet84/lizardfs-plex
