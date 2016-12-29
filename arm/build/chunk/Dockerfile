FROM lowet84/lizardfs-base-arm

RUN apt-get install -y lizardfs-chunkserver
RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
EXPOSE 9422

RUN mkdir -p /var/lib/lizardfs && chown lizardfs:lizardfs /var/lib/lizardfs
RUN chown lizardfs:lizardfs /mnt

ADD files/lizardfs-chunkserver /etc/default/lizardfs-chunkserver
ADD files/mfschunkserver.cfg /etc/mfs/mfschunkserver.cfg.base
ADD files/mfshdd.cfg /etc/mfs/mfshdd.cfg
ADD start.sh /start.sh

CMD sh /start.sh
