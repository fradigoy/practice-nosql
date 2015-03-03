

# Classe de recuppération activity sur github un jour j 
# Modification : recupération d'activity de github sur 24h

require 'open-uri'
require 'zlib'
require 'yajl'
require 'mongo'


#connexionMongo =  Mongo::Connection.new
#db = connexionMongo['githubarchive']
 
#gz = open('http://data.githubarchive.org/2015-01-01-12.json.gz')
#js = Zlib::GzipReader.new(gz).read
 
#Yajl::Parser.parse(js) do |event|
#  db['events'] << event 
#end


connexionMongo =  Mongo::Connection.new
db = connexionMongo['githubarchive']


{1...23}.each do |hour|
	puts "..... hour #{hour}"
 
gz = open('http://data.githubarchive.org/2015-01-01-12-#{hour}.json.gz')
js = Zlib::GzipReader.new(gz).read
 
Yajl::Parser.parse(js) do |event|

  event['create_at'] = Time.parse(event['create_at'])
  db['events'] << event 
end


