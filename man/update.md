### 初始版本 0.7.0
> 2010年5月14日发布,第一个可以查询到发版信息的版本，重要特性：

> Zen Discovery 自动发现模块
Groovy Client支持
简单的插件管理机制
更好支持ICU分词器
更多的管理API
初始化的版本，暂时不多介绍，先来这么多。

### 升级1.0.0 版本
> 2014年2月14日发布，重要特性：
- Snapshot/Restore API 备份恢复API
- 支持聚合分析Aggregations
- CAT API 支持
- 支持联盟查询
- 断路器支持
- Doc values 引入

### 2.0.0 版本
> 2015年10月28日发布，重要特性：

- 增加了 pipleline Aggregations
- query/filter 查询合并，都合并到query中，根据不同的上下文执行不同的查询
- 存储压缩可配置
- Rivers 模块被移除
- Multicast 组播发现被移除，成为一个插件，生产环境必须配置单播地址

### 新特性5.0.0 版本
> 2016年10月26日发布，重要特性：

- Lucene 6.x 的支持，磁盘空间少一半；索引时间少一半；查询性能提升25%；支持IPV6。
- Internal engine级别移除了用于避免同一文档并发更新的竞争锁，带来15%-20%的性能提升
- Shrink API ，它可将分片数进行收缩成它的因数，如之前你是15个分片，你可以收缩成5个或者3个又或者1个，那么我们就可以想象成这样一种场景，在写入压力非常大的收集阶段，设置足够多的索引，充分利用shard的并行写能力，索引写完之后收缩成更少的shard，提高查询性能
- 提供了第一个Java原生的REST客户端SDK
- IngestNode，之前如果需要对数据进行加工，都是在索引之前进行处理，比如logstash可以对日志进行结构化和转换，现在直接在es就可以处理了
- 提供了 Painless 脚本，代替Groovy脚本
- 移除 site plugins ，就是说 head 、 bigdesk 都不能直接装 es 里面了，不过可以部署独立站点（反正都是静态文件）或开发 kibana 插件
- 新增 Sliced Scroll类型，现在Scroll接口可以并发来进行数据遍历了。每个Scroll请求，可以分成多个Slice请求，可以理解为切片，各Slice独立并行，利用Scroll重建或者遍历要快很多倍。
- 新增了Profile API
- 新增了Rollover API
- 新增Reindex
- 提供了第一个Java原生的REST客户端SDK
- 基于HTTP协议的客户端对Elasticsearch的依赖解耦，没有jar包冲突，提供了集群节点自动发现、日志处理、节点请求失败自动进行请求轮询，充分发挥Elasticsearch的高可用能力

- 引入新的字段类型 Text/Keyword 来替换 String
- 限制索引请求大小，避免大量并发请求压垮 ES
- 限制单个请求的 shards 数量，默认 1000 个

### 新特性6.0.0 版本
> 2017年8月31日发布，重要特性：

- 稀疏性 Doc Values 的支持
- Index sorting，即索引阶段的排序。
- 顺序号的支持，每个 es 的操作都有一个顺序编号（类似增量设计）
- 无缝滚动升级
- Removal of types，在 6.0 里面，开始不支持一个 index 里面存在多个 type
- Index-template inheritance，索引版本的继承，目前索引模板是所有匹配的都会合并，这样会造成索引模板有一些冲突问题， 6.0 将会只匹配一个，索引创建时也会进行验证
- Load aware shard routing， 基于负载的请求路由，目前的搜索请求是全节点轮询，那么性能最慢的节点往往会造成整体的延迟增加，新的实现方式将基于队列的耗费时间自动调节队列长度，负载高的节点的队列长度将减少，让其他节点分摊更多的压力，搜索和索引都将基于这种机制。
- 已经关闭的索引将也支持 replica 的自动处理，确保数据可靠。

### 新特性7.0.0 版本
> 2019年4月10日发布，重要特性：

- 集群连接变化：TransportClient被废弃
- 以至于，es7的java代码，只能使用restclient。然后，个人综合了一下，对于java编程，建议采用 High-level-rest-client 的方式操作ES集群

- ES程序包默认打包jdk：
- 以至于7.x版本的程序包大小突然边300MB+
- 对比6.x发现，包大了200MB+， 正是JDK的大小

- Lucene9.0
- 重大改进-正式废除单个索引下多Type的支持
- es6时，官方就提到了es7会删除type，并且es6时已经规定每一个index只能有一个type。在es7中使用默认的_doc作为type，官方说在8.x版本会彻底移除type。
- api请求方式也发送变化，如获得某索引的某ID的文档：GET
- index/_doc/id其中index和id为具体的值

- 7.1开始，Security功能免费使用
- ECK-ElasticSearch Operator on Kubernetes
- 引入了真正的内存断路器，它可以更精准地检测出无法处理的请求，并防止它们使单个节点不稳定
- Zen2 是 Elasticsearch 的全新集群协调层，提高了可靠性、性能和用户体验，变得更快、更安全，并更易于使用

> 新功能
- New Cluster coordination
- Feature - Complete High Level REST Client
- Script Score Query
- 性能优化

- Weak-AND算法提高查询性能
- 默认的Primary Shared数从5改为1，避免Over Sharding
- 更快的前 k 个查询
- 间隔查询(Intervals queries)
- 某些搜索用例（例如，法律和专利搜索）引入了查找单词或短语彼此相距一定距离的记录的需要。
- Elasticsearch 7.0中的间隔查询引入了一种构建此类查询的全新方式，与之前的方法（跨度查询span queries）相比，使用和定义更加简单。
- 与跨度查询相比，间隔查询对边缘情况的适应性更强。

### 总结
> 通过各个版本的迭代升级会发现，Elasticsearch 的产品的重大改善体验，了解了版本间的不同，会让你认知提高一个档次，网上文章一大片，有的时候你发现，文章作者操作的时候成功的，到了你这里就失败了，百思不得其中的奥秘，或者我的一个方法或者对象怎么就没了，谁对谁错，没有定论，懂得事情的本质才是重点，回到问题的根源，才是解决问题的根本。
> 希望本篇的介绍可以让你在学习 Elasticsearch 的路上更顺畅，等你学完了Elasticsearch最新版本后，回过头来再看这篇文章的时候，感觉是不是一样的，我觉得学习一门技术的时候，心里要对全部轮廓有个认知，不至于钻进一个空间，看不到整个森林的尴尬无效的境地。
就像本文标题所说，先看整个森林，再去钻研一课树木，才会更懂。