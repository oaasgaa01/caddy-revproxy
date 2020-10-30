#!/bin/bash    
docker build --tag oaasgaa01/caddy-revproxy --no-cache .
docker stop revproxy
docker run -d --rm --name revproxy -p 443:443 oaasgaa01/caddy-revproxy
