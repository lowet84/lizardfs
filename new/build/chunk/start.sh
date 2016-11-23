#!/bin/bash

sed -i s/#\ MASTER_HOST\ =\ mfsmaster/MASTER_HOST\ =\ $MFSMASTER/g /etc/mfs/mfschunkserver.cfg
sed -i s/#\ CSSERV_LISTEN_HOST\ =\ \*/CSSERV_LISTEN_HOST = $NODEIP/g /etc/mfs/mfschunkserver.cfg
mfschunkserver -d
