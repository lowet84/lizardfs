FROM phusion/baseimage

RUN apt-get update && apt-get install -y wget
RUN wget -O - http://packages.lizardfs.com/lizardfs.key | apt-key add -
RUN echo "deb http://packages.lizardfs.com/ubuntu/xenial xenial main" > /etc/apt/sources.list.d/lizardfs.list

RUN apt-get update
RUN apt-get install -y lizardfs-master lizardfs-chunkserver lizardfs-client lizardfs-adm lizardfs-cgi lizardfs-cgiserv 

RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

EXPOSE 9419 9420 9421 9425
ADD files/lizardfs-master /etc/default/lizardfs-master
ADD files/mfsexports.cfg /etc/mfs/mfsexports.cfg
ADD files/mfsmaster.cfg /etc/mfs/mfsmaster.cfg
ADD files/mfsmaster.cfg.slave /etc/mfs/mfsmaster.cfg.slave
ADD files/lizardfs-chunkserver /etc/default/lizardfs-chunkserver
ADD files/mfshdd.cfg /etc/mfs/mfshdd.cfg
#ADD files/mfsgoals.cfg /etc/mfs/mfsgoals.cfg
ADD files/mfschunkserver.cfg /etc/mfs/mfschunkserver.cfg
ADD scripts /
RUN cp /var/lib/mfs/metadata.mfs.empty /var/lib/mfs/metadata.mfs
