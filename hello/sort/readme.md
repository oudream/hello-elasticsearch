
###
> https://www.elastic.co/guide/en/elasticsearch/reference/5.2/search-request-sort.html

### url
```text
192.168.5.30:9200/goeft_estate_infos/doc/_search
```
### body
```text
{
    "query": {
        "range": {
            "EditDate": {
                "gte": "2020-09-21 13:00:00",
                "lte": "now",
                "format": "yyyy-MM-dd HH:mm:ss",
                "time_zone": "+08:00"
            }
        }
    },
    "from": 0,
    "size": 500,
    "sort": [
        { "EditDate": { "order": "asc" }}
    ],
    "aggs": {}
}
```
