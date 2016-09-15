FROM lowet84/plex

RUN apt-get update && apt-get install -y wget
RUN wget -O - http://packages.lizardfs.com/lizardfs.key | apt-key add -
RUN echo "deb http://packages.lizardfs.com/ubuntu/trusty trusty main" > /etc/apt/sources.list.d/lizardfs.list

RUN apt-get update
RUN apt-get install -y lizardfs-client

RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

ADD run /etc/service/plex/run
RUN chmod +x /etc/service/plex/run
