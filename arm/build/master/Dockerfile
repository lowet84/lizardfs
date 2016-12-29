FROM lowet84/lizardfs-base-arm

RUN apt-get install -y lizardfs-master
RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

EXPOSE 9419 9420 9421
ADD files/lizardfs-master /etc/default/lizardfs-master
ADD files/mfsmaster.cfg /etc/mfs/mfsmaster.cfg
ADD files/mfsexports.cfg /etc/mfs/mfsexports.cfg
ADD start.sh /start.sh

RUN mkdir -p /data
RUN cp /var/lib/lizardfs/metadata.mfs.empty /data/metadata.mfs
CMD sh /start.sh
