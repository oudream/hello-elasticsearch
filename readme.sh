#!/usr/bin/env bash


### 分词
# 准确实用，7个优秀的开源中文分词库推荐
# https://juejin.im/entry/6844903646614781965
#
# https://github.com/fxsjy/jieba
# https://github.com/google-research/bert
# https://github.com/rockyzhengwu/FoolNLTK

# BizPower 使用
# https://github.com/medcl/elasticsearch-analysis-ik


### run
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.8.1


### elastic 技术栈
https://www.zhihu.com/question/54058964
https://developer.51cto.com/art/201904/595529.htm
https://hezhiqiang8909.gitbook.io/java/docs/javatool/elastic
