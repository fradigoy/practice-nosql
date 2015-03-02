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


#Mongoid.database = c['web']

class Page
	include Mongoid::Document

	field :title, :type String, :default ''
	field :url, :type String
	field :keynote, :type Array
	field :description, :type String
	
end