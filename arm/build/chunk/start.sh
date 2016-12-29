#!/bin/bash
rm /etc/mfs/mfschunkserver.cfg
cp /etc/mfs/mfschunkserver.cfg.base /etc/lizardfs/mfschunkserver.cfg
echo "MASTER_HOST = $MFSMASTER" >> /etc/lizardfs/mfschunkserver.cfg
#echo "CSSERV_LISTEN_HOST = $NODEIP" >> /etc/lizardfs/mfschunkserver.cfg

cat /etc/lizardfs/mfschunkserver.cfg
#chown mfs:mfs /mnt
mfschunkserver -d
