FROM lowet84/lizardfs-base-arm

RUN apt-get install -y lizardfs-master
RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

EXPOSE 9419 9420 9421
ADD files/lizardfs-master /etc/default/lizardfs-master
ADD files/mfsmaster.cfg /etc/lizardfs/mfsmaster.cfg
ADD files/mfsexports.cfg /etc/lizardfs/mfsexports.cfg
ADD start.sh /start.sh

RUN cp /var/lib/lizardfs/metadata.mfs.empty /metadata.mfs.empty
#CMD ["mfsmaster", "-d", "start"]
CMD sh /start.sh
