
## build

sudo docker build -t uryyyyyyy/elasticsearch:2.1.1 ./

## run

sudo docker run -d --name elastic2 -p 9200:9200 -p 9300:9300 -e "NODE_NAME=<nodeName>" -e "CLUSTER_NAME=<clusterName>" uryyyyyyy/elasticsearch:2.1.1

** `-e` parameter, you should set your own, just like**

sudo docker run -d --name elastic2 -p 9200:9200 -p 9300:9300 -e "NODE_NAME=node1" "CLUSTER_NAME=cluster0" -e uryyyyyyy/elasticsearch:2.1.1


## result

```
{
  "name" : "Amina Synge",
  "cluster_name" : "elasticsearch",
  "version" : {
    "number" : "2.1.1",
    "build_hash" : "40e2c53a6b6c2972b3d13846e450e66f4375bd71",
    "build_timestamp" : "2015-12-15T13:05:55Z",
    "build_snapshot" : false,
    "lucene_version" : "5.3.1"
  },
  "tagline" : "You Know, for Search"
}
```
