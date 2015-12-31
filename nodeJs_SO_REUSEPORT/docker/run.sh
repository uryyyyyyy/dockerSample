#!/bin/sh

. ~/.nvm/nvm.sh

export NODE_ENV=${NODE_ENV:-development}

node /apps/app.js &

until ls /var/run/app.pid >/dev/null 2>&1; do
    sleep 1
done

exec /usr/sbin/nginx -c /etc/nginx/nginx.conf
