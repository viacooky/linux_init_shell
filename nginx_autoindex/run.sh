#! /bin/bash
docker run -dit \
--name filesvr \
-v /build-download/:/data/files \
-v ~/nginx_files/nginx.conf:/etc/nginx/nginx.conf \
-p 10001:8080 \
nginx
