#!/bin/bash

docker ps -q | while IFS= read -r line; do docker inspect $line | grep Image; docker inspect $line | grep IPAddress; done

exit

echo "pihole"
docker inspect pihole | grep IPAddress
echo "ghost"
docker inspect ghost | grep IPAddress
echo "caddy"
docker inspect caddy | grep IPAddress
echo "traefik"
docker inspect traefik | grep IPAddress
