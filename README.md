# Star Searcher!

Star Searcher is just a simple Ruby client that lets you talk to your Star Search (http://github.com/maddox/star-search).

## Requirements

* httparty (duh)

## How Do I Do It?

Just like every other Ruby REST client

	star_searcher = StarSearcher.new('stars.domain.com')

	star_searcher.feed(3) => page 3 of JSON of stars
	
	star_searcher.search('blue drink', 3) => page 3 of JSON of stars matching this query
	
	star_searcher.by_author('maddox', 3) => page 3 of JSON of stars from maddox
