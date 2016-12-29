#!/bin/bash

if [ ! -f /var/lib/lizardfs/metadata.mfs ]; then
  cp /data/metadata.mfs /var/lib/lizardfs/metadata.mfs
fi
rm /var/lib/lizardfs/metadata.mfs.lock

chown mfs:mfs /var/lib/lizardfs/
mfsmetarestore -a
mfsmaster -d start
