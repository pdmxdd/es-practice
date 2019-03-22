# Delete teams index if it exists
curl -X DELETE 127.0.0.1:9200/teams

# Create teams index
curl -XPUT 127.0.0.1:9200/teams -H 'Content-Type: application/json' -d '
{
	"settings": {
		"index": {
			"number_of_shards": 2,
			"number_of_replicas": 0
		}
	}
}'

# AL-East ()
curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Baltimore",
	"country": "United States",
	"state": "Maryland",
	"name": "Orioles",
	"league": "American",
	"division": "East",
	"world_series_champions": 3
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Toronto",
	"country": "Canada",
	"state": "Ontario",
	"name": "Blue Jays",
	"league": "American",
	"division": "East",
	"world_series_champions": 2
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Tampa Bay",
	"country": "United States",
	"state": "Florida",
	"name": "Rays",
	"league": "American",
	"division": "East",
	"world_series_champions": 0
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Boston",
	"country": "United States",
	"state": "Massachusetts",
	"name": "Red Sox",
	"league": "American",
	"division": "East",
	"world_series_champions": 9
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "New York",
	"country": "United States",
	"state": "New York",
	"name": "Yankees",
	"league": "American",
	"division": "East",
	"world_series_champions": 27
}'

# AL-Central ()
curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Clevland",
	"country": "United States",
	"state": "Ohio",
	"name": "Indians",
	"league": "American",
	"division": "Central",
	"world_series_champions": 2
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Chicago",
	"country": "United States",
	"state": "Illinois",
	"name": "White Sox",
	"league": "American",
	"division": "Central",
	"world_series_champions": 3
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Kansas City",
	"country": "United States",
	"state": "Missouri",
	"name": "Royals",
	"league": "American",
	"division": "Central",
	"world_series_champions": 2
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Detroit",
	"country": "United States",
	"state": "Michigan",
	"name": "Tigers",
	"league": "American",
	"division": "Central",
	"world_series_champions": 4
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Minneapolis",
	"country": "United States",
	"state": "Minnesota",
	"name": "Twins",
	"league": "American",
	"division": "Central",
	"world_series_champions": 3
}'

# AL-West ()
curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Seattle",
	"country": "United States",
	"state": "Washington",
	"name": "Mariners",
	"league": "American",
	"division": "West",
	"world_series_champions": 0
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Austin",
	"country": "United States",
	"state": "Texas",
	"name": "Rangers",
	"league": "American",
	"division": "West",
	"world_series_champions": 0
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Houston",
	"country": "United States",
	"state": "Texas",
	"name": "Astros",
	"league": "American",
	"division": "West",
	"world_series_champions": 1
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Los Angeles",
	"country": "United States",
	"state": "California",
	"name": "Angels",
	"league": "American",
	"division": "West",
	"world_series_champions": 1
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Oakland",
	"country": "United States",
	"state": "California",
	"name": "Athletics",
	"league": "American",
	"division": "West",
	"world_series_champions": 9
}'

# NL-East ()
curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Washington D.C.",
	"country": "United States",
	"state": "District of Columbia",
	"name": "Nationals",
	"league": "National",
	"division": "East",
	"world_series_champions": 0
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Atlanta",
	"country": "United States",
	"state": "Georgia",
	"name": "Braves",
	"league": "National",
	"division": "East",
	"world_series_champions": 3
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Miami",
	"country": "United States",
	"state": "Florida",
	"name": "Marlins",
	"league": "National",
	"division": "East",
	"world_series_champions": 2
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "New York",
	"country": "United States",
	"state": "New York",
	"name": "Mets",
	"league": "National",
	"division": "East",
	"world_series_champions": 2
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Philadelphia",
	"country": "United States",
	"state": "Pennsylvania",
	"name": "Phillies",
	"league": "National",
	"division": "East",
	"world_series_champions": 2
}'

# NL-Central ()
curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Cincinnati",
	"country": "United States",
	"state": "Ohio",
	"name": "Reds",
	"league": "National",
	"division": "Central",
	"world_series_champions": 5
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Pittsburgh",
	"country": "United States",
	"state": "Pennsylvania",
	"name": "Pirates",
	"league": "National",
	"division": "Central",
	"world_series_champions": 5
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "St. Louis",
	"country": "United States",
	"state": "Missouri",
	"name": "Cardinals",
	"league": "National",
	"division": "Central",
	"world_series_champions": 11
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Chicago",
	"country": "United States",
	"state": "Illinois",
	"name": "Cubs",
	"league": "National",
	"division": "Central",
	"world_series_champions": 3
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Milwaukee",
	"country": "United States",
	"state": "Minnesota",
	"name": "Brewers",
	"league": "National",
	"division": "Central",
	"world_series_champions": 0
}'

# NL-West ()
curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Los Angeles",
	"country": "United States",
	"state": "California",
	"name": "Dodgers",
	"league": "National",
	"division": "West",
	"world_series_champions": 6
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Denver",
	"country": "United States",
	"state": "Colorado",
	"name": "Rockies",
	"league": "National",
	"division": "West",
	"world_series_champions": 0
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "San Diego",
	"country": "United States",
	"state": "California",
	"name": "Padres",
	"league": "National",
	"division": "West",
	"world_series_champions": 0
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "San Francisco",
	"country": "United States",
	"state": "California",
	"name": "Giants",
	"league": "National",
	"division": "West",
	"world_series_champions": 8
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Phoenix",
	"country": "United States",
	"state": "Arizona",
	"name": "Diamondbacks",
	"league": "National",
	"division": "West",
	"world_series_champions": 1
}'

