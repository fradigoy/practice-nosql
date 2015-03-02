
#function llen de la class redis permet de retourner la longueur de la liste


require 'redis'
require  'json'
require 'mechanize'

$redis = Redis.new

class Work
	def initialize(tache, lien)
		@tache = tache
		@lien = lien
	end

	def getTache

		@tache
		
	end

	def getLien

		@lien
		
	end

	def toJson

		{tache: @tache, lien: @lien}.to_json
		
	end
	
end
 
def getOneWork

	work = JSON.parse $redis.lpop('jobsOne')
	work = Work.new(work['tache'], work['lien'])
	worker worker
	
end

def worker worker

	reponse = Mechanize.new.get(work.lien).title

	$redis.rpush('jobsTwo', job.toJson)
	
end

getOneWork

nBworksOne = $redis.llen 'jobsOne'
nBworksOne = $redis.llen 'jobsTwo



