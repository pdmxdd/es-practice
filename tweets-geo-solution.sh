curl -XDELETE 127.0.0.1:9200/tweets_geo_geo

# New mapping goes here
curl -XPUT 127.0.0.1:9200/tweets_geo_geo -H 'Content-Type: application/json' -d '
{
	"settings": {
		"index": {
			"number_of_shards": 2,
			"number_of_replicas": 0
		}
	},
    "mappings": {
        "_doc": {
            "properties": {
                "date": { "type": "date" },
                "likes": { "type": "long" },
                "name": { "type": "text" },
                "tweet": { "type": "text" },
                "name": { "type": "text" },
                "user_id": { "type": "long" }
            }
        }
    }
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-13",
   "name" : "Mary Jones",
   "tweet" : "Rational databases are so yesterday",
   "user_id" : 2,
   "likes": 1,
   "location": "37.910076, -122.065186"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-13",
   "name" : "Mary Jones",
   "tweet" : "Elasticsearch is written in Java!",
   "user_id" : 2,
   "likes": 2,
   "location": "33.487007, -117.143784"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-13",
   "name" : "Mary Jones",
   "tweet" : "Elasticsearch means full text search has never been so easy",
   "user_id" : 2,
   "likes": 0,
   "location": "36.974117, -122.030792"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-14",
   "name" : "John Smith",
   "tweet" : "@mary it is not just text, it does everything",
   "user_id" : 1,
   "likes": 2,
   "location": "39.932117, -105.281639"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-15",
   "name" : "Mary Jones",
   "tweet" : "However did I manage before Elatsicsearch?",
   "user_id" : 2,
   "likes": 2,
   "location": "46.731705, -116.999939"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-16",
   "name" : "John Smith",
   "tweet" : "The Elasticsearch API is really easy to use",
   "user_id" : 1,
   "likes": 17,
   "location": "47.610378, -122.200676"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-17",
   "name" : "Mary Jones",
   "tweet" : "The Query DSL is really powerful and flexible",
   "user_id" : 2,
   "likes": 9,
   "location": "47.610378, -122.200676"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-18",
   "name" : "John Smith",
   "user_id" : 1,
   "likes": 5,
   "location": 
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-19",
   "name" : "Mary Jones",
   "tweet" : "Geo-location aggregations are really cool",
   "user_id" : 2,
   "likes": 0,
   "location": "38.047989, -84.501640"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-20",
   "name" : "John Smith",
   "tweet" : "Elasticsearch surely is one of the hottest new NoSQL products",
   "user_id" : 1,
   "likes": 1
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-21",
   "name" : "Mary Jones",
   "tweet" : "Elasticsearch is built for the cloud, easy to scale",
   "user_id" : 2,
   "likes": 1,
   "location": "41.245708, -75.881241"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-22",
   "name" : "John Smith",
   "tweet" : "Elasticsearch and I have left the honeymoon stage, and I still love her.",
   "user_id" : 1,
   "likes": 4
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-23",
   "name" : "Mary Jones",
   "tweet" : "So yes, I am an Elasticsearch fanboy",
   "user_id" : 2,
   "likes": 12,
   "location": "30.005417, -91.818665"
}'

curl -XPOST 'localhost:9200/tweets_geo/_doc' -H 'Content-type: application/json' -d '
{
   "date" : "2014-09-24",
   "name" : "John Smith",
   "tweet" : "How many more cheesy tweets do I have to write?",
   "user_id" : 1,
   "likes": 4
}'