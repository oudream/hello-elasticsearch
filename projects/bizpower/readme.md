
### 搜索
> 搜索注意事项
> :!:请确保Elasticsearch和搜索中间件只在可靠的环境下被访问，请勿开放公网访问权限

### 安装并配置Elasticsearch
> 安装
> 解压缩源码包提供的elasticsearch.tar.gz

```bash
tar -xzf elasticsearch.tar.gz
```
 
### 创建用户
```bash
groupadd elastic
useradd elastic -g elastic -m
```

### 配置 
```bash
# 权限
chown elastic:elastic elasticsearch -R
# 修改系统参数
vim /etc/sysctl.conf
sysctl.conf
vm.max_map_count=262144
sysctl -p
# 修改配置
# 默认Elasticsearch只支持本机访问，如果为集群环境需要修改如下配置
vim /usr/local/elasticsearch/config/elasticsearch.yml
#修改示例
network.host: 192.168.1.234
```
 
### 配置启动脚本
```bash
cat > /etc/systemd/system/elastic.service <<EOF
[Unit]
Description=Starts and stops a single elasticsearch instance on this system
Documentation=http://www.elasticsearch.org
 
[Service]
Type=forking
User=elastic
Group=elastic
PIDFile=/usr/local/elasticsearch/config/elasticsearch.pid
ExecStart=/usr/local/elasticsearch/bin/elasticsearch -d -p /usr/local/elasticsearch/config/elasticsearch.pid
LimitNOFILE=65536
TimeoutStopSec=20
 
[Install]
WantedBy=multi-user.target
EOF
```

```bash
启动
# 配置Elasticsearch随系统启动
systemctl enable elastic
# 启动Elasticsearch服务
systemctl start elastic
```

### 中文分词说明
> 分词插件使用elasticsearch-analysis-ik
> 分词词典配置文件elasticsearch/plugins/ik/config/IKAnalyzer.cfg.xml
> 分词词典文件位置在elasticsearch/plugins/ik/config/custom目录下，mydict.dic为默认加载的自定义词典文件
> 词典文件修改后需要重启Elasticsearch服务才会生效，新词典生效后建立的索引才会使用新的分词方案

### 安装搜索中间件
> 拷贝源码包\搜索\搜索中间件\linux下文件到服务器/usr/local/ncsearch
> 修改config.json配置文件，指定搜索服务端口号和elasticsearch服务地址
> vi /usr/local/ncsearch/config.json
> {
>   "port": "1234",
>   "elastic": "http://192.168.1.234:9200/",
>   "autoSuggest": true,
>   "develop": true
> }

### 执行
> 如果search没有执行权限需要先执行 chmod a+x search 命令
> 把如下命令添加到/etc/rc.local可以实现随系统启动
```bash
nohup /usr/local/ncsearch/search 1>> /var/log/ncsearch.log 2>>/dev/null &
```

### 初始化
> :!:初始化仅需要在初次安装时执行一次，如重复初始化，所有搜索数据会被清空，请谨慎操作
```bash
# 初始化命令
curl -X POST <搜索中间件地址>/goods/init
curl -X POST <搜索中间件地址>/suggest/init
curl -X POST <搜索中间件地址>/orders/init
curl -X POST <搜索中间件地址>/coupon/activity/init
# 初始化范例
curl -X POST http://192.168.1.128:1234/goods/init
curl -X POST http://192.168.1.128:1234/suggest/init
curl -X POST http://192.168.1.128:1234/orders/init
curl -X POST http://192.168.1.128:1234/coupon/activity/init
```

### kibana
```bash
docker run --link YOUR_ELASTICSEARCH_CONTAINER_NAME_OR_ID:elasticsearch -p 5601:5601 {docker-repo}:{version}

docker run docker.elastic.co/kibana/kibana:5.2.2

docker run --net=host -e "ELASTICSEARCH_URL=http://192.168.5.30:9200" docker.elastic.co/kibana/kibana:5.2.2
```
