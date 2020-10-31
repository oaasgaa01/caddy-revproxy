#!/bin/bash    
docker build --tag oaasgaa01/caddy-revproxy --no-cache .
docker stop revproxy
docker run -d --rm --name revproxy -v revproxy_data:/data -v revproxy_config -p 80:80 -p 443:443 oaasgaa01/caddy-revproxy