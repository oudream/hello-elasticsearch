
#
ES_HOST=192.168.5.30
#
ES_HOST=192.168.241.39

### index
curl -X GET "${ES_HOST}:9200/_cat/indices/my-index-*?v&s=index&pretty"

curl -X GET "${ES_HOST}:9200/_cat/indices"

curl -X GET "${ES_HOST}:9200/_cat/indices/bizpower_goods?v&s=index&pretty"

### mapping
curl -X GET "${ES_HOST}:9200/*/_mapping?pretty"
curl -X GET "${ES_HOST}:9200/_all/_mapping?pretty"
curl -X GET "${ES_HOST}:9200/_mapping?pretty"

curl -X GET "${ES_HOST}:9200/_mapping?pretty"
curl -X GET "${ES_HOST}:9200/bizpower_goods/_mapping?pretty"

### setting
curl -X GET "${ES_HOST}:9200/my-index-000001,my-index-000002/_settings?pretty"
curl -X GET "${ES_HOST}:9200/_all/_settings?pretty"
curl -X GET "${ES_HOST}:9200/log_2099_*/_settings?pretty"

curl -X GET "${ES_HOST}:9200/bizpower_goods/_settings?pretty"

#
    yellow open bizpower_goods     1Mu_i7wdSX-B-oMJfFWVGA 5 1  7530  90   4.8mb   4.8mb
    yellow open bizpower_orders    6Ymj7NELToGrPNTBfrgcbQ 5 1  8750  13   9.5mb   9.5mb
    yellow open .kibana            Smak12_9SjW-huaXyPkG3g 1 1     1   0   3.1kb   3.1kb
    yellow open bizpower_coupon    I3v-JrLDSA2Vyr_bRfPX4w 5 1   204  16 682.3kb 682.3kb
    yellow open index_want_comment 4GP29hkxR3Okz57U-QdgYw 5 1  6744  13   2.3mb   2.3mb
    yellow open bizpower_suggest   n8CC4bCnQQOcyJOxWdZ5DQ 5 1  2770   0 464.1kb 464.1kb
    yellow open index_im_msg       q6satkuTSa6ZEurYX1S-iA 5 1 11029   0   2.2mb   2.2mb
    yellow open index_want_post    tnB11dPFTqKORQdly7x3Wg 5 1  4390 142   2.2mb   2.2mb

