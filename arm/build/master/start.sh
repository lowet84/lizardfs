#!/bin/bash

if [ ! -f /var/lib/lizardfs/metadata.mfs ]; then
  cp /data/metadata.mfs /var/lib/lizardfs/metadata.mfs
fi

chown lizardfs:lizardfs /var/lib/lizardfs/
mfsmetarestore -a
rm /var/lib/lizardfs/metadata.mfs.lock
mfsmaster -d start
