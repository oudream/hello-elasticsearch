#!/usr/bin/env bash


# https://www.elastic.co/guide/index.html


### java elasticsearch api
# https://www.elastic.co/guide/en/elasticsearch/client/java-api/7.8/index.html
open https://www.elastic.co/guide/en/elasticsearch/client/java-api/7.8/index.html

### elasticsearch
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
# 日志
# https://www.elastic.co/guide/cn/elasticsearch/guide/current/logging.html
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.8.1
docker logs -f --tail 10 container_name

# elk docker-compose
# https://github.com/long2ge/platform/blob/master/doc/elk-stack/docker-compose.yml

### kibana
# https://www.elastic.co/cn/what-is/kibana
# https://www.elastic.co/guide/cn/kibana/current/introduction.html
open https://www.elastic.co/guide/cn/kibana/current/tutorial-load-dataset.html


### ElasticSearch-索引迁移
# https://blog.csdn.net/Zong_0915/article/details/107769198
# https://www.cnblogs.com/codeyou/p/9327205.html


### 分词安装
# https://www.ruanyifeng.com/blog/2017/08/elasticsearch.html
open https://www.ruanyifeng.com/blog/2017/08/elasticsearch.html
./bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.8.1/elasticsearch-analysis-ik-7.8.1.zip


### snapshot restore
# snapshot
# https://elasticsearch.cn/article/648
PUT /_snapshot/my_backup/snapshot_2?wait_for_completion=true
# restore
POST /_snapshot/my_backup/snapshot_1/_restore?wait_for_completion=true
{
  "indices": "index_1",
  "rename_replacement": "restored_index_1"
}