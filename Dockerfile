FROM caddy:2.2.1-alpine
#FROM caddy:alpine

LABEL maintainer="olav.aasgaard@outlook.com"

COPY Caddyfile /etc/caddy/Caddyfile
# COPY srv /srv

# ENTRYPOINT ["/bin/caddy"]
#CMD [ "caddy", "run", "--watch" ]
