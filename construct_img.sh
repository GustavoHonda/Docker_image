#!/bin/bash

sudo docker container stop mypg

sudo docker container rm mypg

sudo docker image build . -t custom-postgres:14.2-alpine3.15

sudo docker container run -d -p 1025:1025 \
    --name mypg \
    -v $PWD/index.html:/usr/share/caddy/index.html \
    -v caddy_data:/data \
    -d custom-postgres:14.2-alpine3.15  

sudo docker exec -it mypg mkdir /usr/src/pages

sudo docker exec -it mypg cp site.html /usr/src/pages

sudo docker exec -it mypg mkdir /etc/caddy

sudo docker exec -it mypg mkdir /etc/caddy/Caddyfile

sudo docker exec -it mypg cp Caddyfile /etc/caddy/Caddyfile

sudo docker exec -it mypg ls 

