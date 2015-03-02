require 'redis'
require 'json'
require 'mongo'
require 'mongoid'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require './worker'

$redis = Redis.new
$c = Mongo::Connection.new
Mongoid.database = $c['Exercice1']


