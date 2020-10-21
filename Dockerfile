FROM caddy:2.2.1-alpine

LABEL maintainer="olav.aasgaard@outlook.com"

#COPY Caddyfile /etc/caddy/Caddyfile
COPY site /srv