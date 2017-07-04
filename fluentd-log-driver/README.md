sandbox-docker-fluentd-logging
======

## Fluentd logging server container

```
$ sudo docker build -t uryyyyyyy/fluentdSample ./fluentd
$ sudo docker run -p 24224:24224 --name logger -d uryyyyyyy/fluentdSample
```

## log container (nginx)

```
$ docker build -t uryyyyyyy/nginx-fluentd-log-driver ./nginx
$ docker run --name web1 -p 80:80 -d -p 80:80 --log-driver=fluentd --log-opt=fluentd-address=localhost:24224 --log-opt=fluentd-tag=docker.{{.FullID}} uryyyyyyy/nginx-fluentd-log-driver 
```

## and logging

```
$ docker logs -f logger
```
