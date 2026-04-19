FROM caddy:2.8-alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY site /srv/site

EXPOSE 8080
