curl -XDELETE 127.0.0.1:9200/tweets

curl -XPUT 127.0.0.1:9200/tweets -H 'Content-Type: application/json' -d '
{
	"settings": {
		"index": {
			"number_of_shards": 2,
			"number_of_replicas": 0
		}
	}
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-13",
   "name" : "Mary Jones",
   "tweet" : "Relational databases are so yesterday",
   "user_id" : 2,
   "likes": 1
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-13",
   "name" : "Mary Jones",
   "tweet" : "Elasticsearch is written in Java!",
   "user_id" : 2,
   "likes": 2
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-13",
   "name" : "Mary Jones",
   "tweet" : "Elasticsearch means full text search has never been so easy",
   "user_id" : 2,
   "likes": 0
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-14",
   "name" : "John Smith",
   "tweet" : "@mary it is not just text, it does everything",
   "user_id" : 1,
   "likes": 2
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-15",
   "name" : "Mary Jones",
   "tweet" : "However did I manage before Elasticsearch?",
   "user_id" : 2,
   "likes": 2
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-16",
   "name" : "John Smith",
   "tweet" : "The Elasticsearch API is really easy to use",
   "user_id" : 1,
   "likes": 17
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-17",
   "name" : "Mary Jones",
   "tweet" : "The Query DSL is really powerful and flexible",
   "user_id" : 2,
   "likes": 9
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-18",
   "name" : "John Smith",
   "user_id" : 1,
   "likes": 5
}'

curl -XPOST 'localhost:9200/tweets/_doc' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-19",
   "name" : "Mary Jones",
   "tweet" : "Geo-location aggregations are really cool",
   "user_id" : 2,
   "likes": 0
}'

curl -XPOST 'localhost:9200/tweets/_doc0' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-20",
   "name" : "John Smith",
   "tweet" : "Elasticsearch surely is one of the hottest new NoSQL products",
   "user_id" : 1,
   "likes": 1
}'

curl -XPOST 'localhost:9200/tweets/_doc1' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-21",
   "name" : "Mary Jones",
   "tweet" : "Elasticsearch is built for the cloud, easy to scale",
   "user_id" : 2,
   "likes": 1
}'

curl -XPOST 'localhost:9200/tweets/_doc2' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-22",
   "name" : "John Smith",
   "tweet" : "Elasticsearch and I have left the honeymoon stage, and I still love her.",
   "user_id" : 1,
   "likes": 4
}'

curl -XPOST 'localhost:9200/tweets/_doc3' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-23",
   "name" : "Mary Jones",
   "tweet" : "So yes, I am an Elasticsearch fanboy",
   "user_id" : 2,
   "likes": 12
}'

curl -XPOST 'localhost:9200/tweets/_doc4' -H 'Content-type:application/json' -d '
{
   "date" : "2014-09-24",
   "name" : "John Smith",
   "tweet" : "How many more cheesy tweets do I have to write?",
   "user_id" : 1,
   "likes": 4
}'