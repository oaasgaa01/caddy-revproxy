#!/bin/bash    
# docker rm -vf $(docker ps -a -q)
# docker rmi -f $(docker images -a -q)
docker build --tag oaasgaa01/caddy-revproxy --no-cache .
docker stop revproxy
docker run -d --rm --name revproxy -p 80:80 -p 443:443 -v revproxy_data:/data -v revproxy_config:/config oaasgaa01/caddy-re