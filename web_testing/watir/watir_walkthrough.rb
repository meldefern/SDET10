require 'watir'

class Bbc

	def initialize
		# call chrome driver
		@chrome = Watir::Browser.new :chrome
		@bbc_homepage_url = 'https://www.bbc.co.uk/'
	end

end