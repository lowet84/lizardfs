FROM lowet84/lizardfs-base

RUN apt-get install -y lizardfs-chunkserver
RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
EXPOSE 9422

RUN mkdir -p /var/lib/mfs && chown mfs:mfs /var/lib/mfs

ADD files/lizardfs-chunkserver /etc/default/lizardfs-chunkserver
ADD files/mfschunkserver.cfg /etc/mfs/mfschunkserver.cfg
ADD files/mfshdd.cfg /etc/mfs/mfshdd.cfg
ADD start.sh /start.sh

CMD sh /start.sh
