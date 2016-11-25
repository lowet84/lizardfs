#!/bin/bash

if [ ! -f /var/lib/mfs/metadata.mfs ]; then
  cp /metadata.mfs.empty /var/lib/mfs/metadata.mfs
fi

chown mfs:mfs /var/lib/mfs/
mfsmaster -d start
