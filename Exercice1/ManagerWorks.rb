
#Classe metier permettant d'ajouter des liens (Job) en format JSON dans la bdd Redis


require 'redis'
require 'json'

$redis = Redis.new

:tache
:lien

class ManagerWorks

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

def addBddWorker work 

	$redis.rpush(jobOne, job.toJson)
	
end

work = work.new('GET', 'http://www.sampleo.com/')
addBddWorker work 

