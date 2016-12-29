#!/bin/bash

if [ ! -f /var/lib/lizardfs/metadata.mfs ]; then
  cp /metadata.mfs.empty /var/lib/lizardfs/metadata.mfs
fi
rm /var/lib/lizardfs/metadata.mfs.lock

chown lizardfs:lizardfs /var/lizardfs/mfs/
mfsmaster -d start
