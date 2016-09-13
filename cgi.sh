docker rm -f cgiserver
docker run -it --name cgiserver -d -p 9425:9425 --network lizardfs lowet84/lizardfs sh cgi.sh
