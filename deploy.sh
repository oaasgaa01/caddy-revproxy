#!/bin/bash    
docker build --tag oaasgaa01/caddy-revproxy --no-cache .
docker stop revproxy
docker run -d --rm --name revproxy -p 80:80 -p 443:443 -v /site:/srv -v revproxy_data:/data -v revproxy_config:/config caddy

# docker run -d --rm --name revproxy -v revproxy_data:/data -v revproxy_config -p 80:80 -p 443:443 oaasgaa01/caddy-revproxy
# docker run -d --rm --name revproxy -p 80:80 -p 443:443 -v /site:/srv -v caddy_data:/data -v caddy_config:/config caddy file-server --domain aasgaards.no
