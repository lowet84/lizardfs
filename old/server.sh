#!/bin/bash
docker rm -f mfsmaster
docker run -it -p 9421:9421 --name mfsmaster -v mfsmaster$1:/var/lib/mfs -v mfsslave$1:/slave -d --network lizardfs lowet84/lizardfs sh server.sh
