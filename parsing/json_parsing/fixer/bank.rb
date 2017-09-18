require 'json'
require	'httparty'
		
class Bank

	attr_accessor :file

	def initialize
		@file = JSON.parse(HTTParty.get('http://api.fixer.io/latest').body)
	end

end