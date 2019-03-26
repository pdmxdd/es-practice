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
	},
    "mappings": {
        "_doc": {
            "properties": {
                "city": { "type": "text" },
                "country": { "type": "text" },
                "division": { "type": "text" },
                "league": { "type": "text" },
                "name": { "type": "text" },
                "state": { "type": "text" },
                "world_series_champions": { "type": "long" },
                "stadium_location": { "type": "geo_point" }
            }
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
	"world_series_champions": 3,
    "stadium_location": {
        "lat": 39.284126, 
        "lon": -76.621501
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Toronto",
	"country": "Canada",
	"state": "Ontario",
	"name": "Blue Jays",
	"league": "American",
	"division": "East",
	"world_series_champions": 2,
    "stadium_location": {
        "lat": 43.641484,
        "lon": -79.389375
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Tampa Bay",
	"country": "United States",
	"state": "Florida",
	"name": "Rays",
	"league": "American",
	"division": "East",
	"world_series_champions": 0,
    "stadium_location": {
        "lat": 27.768291,
        "lon": -82.653392
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Boston",
	"country": "United States",
	"state": "Massachusetts",
	"name": "Red Sox",
	"league": "American",
	"division": "East",
	"world_series_champions": 9,
    "stadium_location": {
        "lat": 42.346700, 
        "lon": -71.097229
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "New York",
	"country": "United States",
	"state": "New York",
	"name": "Yankees",
	"league": "American",
	"division": "East",
	"world_series_champions": 27,
    "stadium_location": {
        "lat": 40.829667,
        "lon": -73.926207
    }
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
	"world_series_champions": 2,
    "stadium_location": {
        "lat": 41.496235, 
        "lon": -81.685218
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Chicago",
	"country": "United States",
	"state": "Illinois",
	"name": "White Sox",
	"league": "American",
	"division": "Central",
	"world_series_champions": 3,
    "stadium_location": {
        "lat": 41.829942, 
        "lon": -87.633774
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Kansas City",
	"country": "United States",
	"state": "Missouri",
	"name": "Royals",
	"league": "American",
	"division": "Central",
	"world_series_champions": 2,
    "stadium_location": {
        "lat": 39.051689, 
        "lon": -94.480303
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Detroit",
	"country": "United States",
	"state": "Michigan",
	"name": "Tigers",
	"league": "American",
	"division": "Central",
	"world_series_champions": 4,
    "stadium_location": {
        "lat": 42.338998, 
        "lon": -83.048509
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Minneapolis",
	"country": "United States",
	"state": "Minnesota",
	"name": "Twins",
	"league": "American",
	"division": "Central",
	"world_series_champions": 3,
    "stadium_location": {
        "lat": 44.981811, 
        "lon": -93.277514
    }
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
	"world_series_champions": 0,
    "stadium_location": {
        "lat": 47.591424, 
        "lon": -122.332498
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Austin",
	"country": "United States",
	"state": "Texas",
	"name": "Rangers",
	"league": "American",
	"division": "West",
	"world_series_champions": 0,
    "stadium_location": {
        "lat": 32.751242, 
        "lon": -97.083220
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Houston",
	"country": "United States",
	"state": "Texas",
	"name": "Astros",
	"league": "American",
	"division": "West",
	"world_series_champions": 1,
    "stadium_location": {
        "lat": 29.757055, 
        "lon": -95.355428
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Los Angeles",
	"country": "United States",
	"state": "California",
	"name": "Angels",
	"league": "American",
	"division": "West",
	"world_series_champions": 1,
    "stadium_location": {
        "lat": 33.800308, 
        "lon": -117.882754
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Oakland",
	"country": "United States",
	"state": "California",
	"name": "Athletics",
	"league": "American",
	"division": "West",
	"world_series_champions": 9,
    "stadium_location": {
        "lat": 37.751628,  
        "lon": -122.200535
    }
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
	"world_series_champions": 0,
    "stadium_location": {
        "lat": 38.873052, 
        "lon": -77.007433
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Atlanta",
	"country": "United States",
	"state": "Georgia",
	"name": "Braves",
	"league": "National",
	"division": "East",
	"world_series_champions": 3,
    "stadium_location": {
        "lat": 33.890857, 
        "lon": -84.467831
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Miami",
	"country": "United States",
	"state": "Florida",
	"name": "Marlins",
	"league": "National",
	"division": "East",
	"world_series_champions": 2,
    "stadium_location": {
        "lat": 25.778149, 
        "lon": -80.219723
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "New York",
	"country": "United States",
	"state": "New York",
	"name": "Mets",
	"league": "National",
	"division": "East",
	"world_series_champions": 2,
    "stadium_location": {
        "lat": 40.757120, 
        "lon": -73.845832
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Philadelphia",
	"country": "United States",
	"state": "Pennsylvania",
	"name": "Phillies",
	"league": "National",
	"division": "East",
	"world_series_champions": 2,
    "stadium_location": {
        "lat": 39.906090, 
        "lon": -75.166484
    }
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
	"world_series_champions": 5,
    "stadium_location": {
        "lat": 39.097989, 
        "lon": -84.508215
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Pittsburgh",
	"country": "United States",
	"state": "Pennsylvania",
	"name": "Pirates",
	"league": "National",
	"division": "Central",
	"world_series_champions": 5,
    "stadium_location": {
        "lat": 40.446855, 
        "lon": -80.005676
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "St. Louis",
	"country": "United States",
	"state": "Missouri",
	"name": "Cardinals",
	"league": "National",
	"division": "Central",
	"world_series_champions": 11,
    "stadium_location": {
        "lat": 38.622627, 
        "lon": -90.192799
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Chicago",
	"country": "United States",
	"state": "Illinois",
	"name": "Cubs",
	"league": "National",
	"division": "Central",
	"world_series_champions": 3,
    "stadium_location": {
        "lat": 41.948494, 
        "lon": -87.655311
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Milwaukee",
	"country": "United States",
	"state": "Minnesota",
	"name": "Brewers",
	"league": "National",
	"division": "Central",
	"world_series_champions": 0,
    "stadium_location": {
        "lat": 43.027985, 
        "lon": -87.971150
    }
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
	"world_series_champions": 6,
    "stadium_location": {
        "lat": 34.073869, 
        "lon": -118.239958
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Denver",
	"country": "United States",
	"state": "Colorado",
	"name": "Rockies",
	"league": "National",
	"division": "West",
	"world_series_champions": 0,
    "stadium_location": {
        "lat": 39.755965, 
        "lon": -104.994178
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "San Diego",
	"country": "United States",
	"state": "California",
	"name": "Padres",
	"league": "National",
	"division": "West",
	"world_series_champions": 0,
    "stadium_location": {
        "lat": 32.707603, 
        "lon": -117.157025
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "San Francisco",
	"country": "United States",
	"state": "California",
	"name": "Giants",
	"league": "National",
	"division": "West",
	"world_series_champions": 8,
    "stadium_location": {
        "lat": 37.778604, 
        "lon": -122.389270
    }
}'

curl -XPOST 127.0.0.1:9200/teams/_doc -H 'Content-Type: application/json' -d '
{
	"city": "Phoenix",
	"country": "United States",
	"state": "Arizona",
	"name": "Diamondbacks",
	"league": "National",
	"division": "West",
	"world_series_champions": 1,
    "stadium_location": {
        "lat": 33.445518, 
        "lon": -112.066240
    }
}'

