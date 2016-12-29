#!/bin/bash

if [ ! -f /var/lib/mfs/metadata.mfs ]; then
  echo "copying empty metadata.mfs"
  cp /data/metadata.mfs /var/lib/mfs/metadata.mfs
fi
rm /var/lib/mfs/metadata.mfs.lock

echo "chown mfs:mfs /var/lib/mfs/"
chown mfs:mfs /var/lib/mfs/
echo "chown mfs:mfs /var/lib/mfs/metadata.mfs"
chown mfs:mfs /var/lib/mfs/metadata.mfs
mfsmetarestore -a
mfsmaster -d start
