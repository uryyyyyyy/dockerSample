#!/bin/sh

# 現在起動している Docker コンテナの ID を取得
running_container_id=$(sudo docker ps -ql --no-trunc --filter='status=running')

# 新しく Docker コンテナを起動してその ID を取得
container_id=$(sudo docker run -d --net=host -e NODE_ENV=development hotdeploy_app)

# 新しく起動した Dokcer コンテナが完全に起動するのを待つ
sudo docker exec $container_id bash -c 'while [ -z "$(cat /var/run/nginx.pid 2>/dev/null)" ]; do sleep 1; done'

# 古い Docker コンテナのメインプロセスを落とす
# run.sh の最後で Nginx を起動しているためメインプロセスは Nginx です
# ですので Nginx に対して Graceful restart を行うため SIGQUIT を送ります
sudo docker kill -s QUIT $running_container_id
