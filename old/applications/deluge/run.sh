#!/bin/bash
MOUNTPATH=core
SERVER=192.168.1.3
FOLDER=Filer
SMBUSER=fredrik
SMBPASSWORD=Hartass2
docker rm -f lizardfs-deluge
docker run -it -d -p 8112:8112 -p 58846:58846 --name lizardfs-deluge --privileged --network lizardfs -e MOUNTPATH=$MOUNTPATH -e SERVER=$SERVER -e FOLDER=$FOLDER -e SMBUSER=$SMBUSER -e SMBPASSWORD=$SMBPASSWORD lowet84/lizardfs-deluge
