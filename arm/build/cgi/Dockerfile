FROM lowet84/lizardfs-base-arm

RUN apt-get install -y lizardfs-cgiserv

RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

EXPOSE 9425

ADD start.sh /start.sh
CMD sh start.sh
