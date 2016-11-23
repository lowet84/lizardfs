#!/bin/bash
rm /etc/mfs/mfschunkserver.cfg
cp /etc/mfs/mfschunkserver.cfg.base /etc/mfs/mfschunkserver.cfg
echo "MASTER_HOST = $MFSMASTER" >> /etc/mfs/mfschunkserver.cfg
#echo "CSSERV_LISTEN_HOST = $NODEIP" >> /etc/mfs/mfschunkserver.cfg

cat /etc/mfs/mfschunkserver.cfg
mfschunkserver -d
