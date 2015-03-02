require 'redis'
require 'json'
require './worker'

$redis = Redis.new

:tache
:lien

def addWorker worker

	$redis.rpush('workerOne', worker.toJson)
	
end

worker = Worker.new("GET", 'http://www.macg.co/')
addWorker worker

