#!/usr/bin/env bash



### docker es:7
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.7.0
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.7.0
curl -X GET "localhost:9200/_cat/nodes?v&pretty"


### docker
# https://www.elastic.co/guide/en/elasticsearch/reference/5.2/docker.html
docker run -p 9200:9200 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" docker.elastic.co/elasticsearch/elasticsearch:5.2.2
docker run -p 9200:9200 -p 9300:9300 docker.elastic.co/elasticsearch/elasticsearch:5.2.2
# Inspect status of cluster
curl -u elastic http://127.0.0.1:9200/_cat/health


# ElasticSearch的默认用户名/密码
#  user: elastic
#  password: changeme
curl -u elastic:changeme localhost:9200


# 同步 MySQL ：syncing your MySQL data into Elasticsearch automatically
# https://github.com/siddontang/go-mysql-elasticsearch
go get github.com/siddontang/go-mysql-elasticsearch, it will print some messages in console, skip it. :-)
cd $GOPATH/src/github.com/siddontang/go-mysql-elasticsearch
make
#
cd $GOPATH/src/github.com/siddontang/go-mysql-elasticsearch
vim ./etc/river.toml
# 增加对mariadb的配置，开启binlog：


# doc
# https://www.elastic.co/cn/
# https://www.elastic.co/guide/cn/elasticsearch/guide/current/distributed-cluster.html
# download
# https://www.elastic.co/cn/downloads/elasticsearch


# Chrome 扩展程序
# ElasticSearch Head


# example
# https://www.ruanyifeng.com/blog/2017/08/elasticsearch.html
