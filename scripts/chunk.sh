#!/bin/bash
chown mfs:mfs /mnt

if service lizardfs-chunkserver start
then
  read -p "Press space to exit..." key
else
  echo "Error!"
fi
