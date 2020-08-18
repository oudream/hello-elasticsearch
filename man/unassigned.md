## ES shard unassigned的解决方法汇总
> https://www.datadoghq.com/blog/elasticsearch-unassigned-shards/?spm=a2c6h.12873639.0.0.278c2acf4vLJZz

### 说下shard出现的几个状态说明：

> relocating_shards shows the number of shards that are currently moving from one node to another node(现网中遇到，因为kill -9重启es的方法不对，导致node下线，集群重新分配shard). This number is often zero, but can increase when Elasticsearch decides a cluster is not properly balanced, a new node is added, or a node is taken down, for example（我们的ES集群没有副本，很可能由于网络不稳定导致单个节点下线，从而重新分配shard）.

> initializing_shards is a count of shards that are being freshly created. For example, when you first create an index, the shards will all briefly reside in initializing state. This is typically a transient event, and shards shouldn’t linger in initializing too long. You may also see initializing shards when a node is first restarted: as shards are loaded from disk, they start as initializing.（现网遇到过）

> unassigned_shards are shards that exist in the cluster state, but cannot be found in the cluster itself. A common source of unassigned shards are unassigned replicas. For example, an index with five shards and one replica will have five unassigned replicas in a single-node cluster. Unassigned shards will also be present if your cluster is red (since primaries are missing).


- 其中unassigned_shards的问题是比较头痛的，我汇总了网上的解决方法，大家后面遇到可以参阅：

- 总结得最整的是 
- https://www.datadoghq.com/blog/elasticsearch-unassigned-shards/

- 单独针对主shard出现unassigned的解决可以看 
- http://blog.kiyanpro.com/2016/03/06/elasticsearch/reroute-unassigned-shards/ 
- https://t37.net/how-to-fix-your-elasticsearch-cluster-stuck-in-initializing-shards-mode.html 
- http://www.wklken.me/posts/2015/05/23/elasticsearch-issues.html

- 单独针对副本shard出现unassigned的解决可以看 
- https://z0z0.me/recovering-unassigned-shards-on-elasticsearch/  
- https://dpatil1410.wordpress.com/2016/09/24/its-red-how-do-i-recover-unassigned-elasticsearch-shards/
