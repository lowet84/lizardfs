#!/bin/bash
docker rm -f mfschunk$1
docker run --restart=always -it --name mfschunk$1 -v mfschunk$1:/mnt -d --network lizardfs lowet84/lizardfs sh chunk.sh
