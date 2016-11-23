FROM phusion/baseimage

RUN apt-get update && apt-get install -y wget
RUN wget -O - http://packages.lizardfs.com/lizardfs.key | apt-key add -
RUN echo "deb http://packages.lizardfs.com/ubuntu/xenial xenial main" > /etc/apt/sources.list.d/lizardfs.list

RUN apt-get update
