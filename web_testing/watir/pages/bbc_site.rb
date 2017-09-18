require_relative 'bbc_homepage'
require_relative 'bbc_sign_in_page'

class BbcSite

	def initialize(browser)
		# create a new instance
		@browser = Watir::Browser.new browser
	end

	def homepage
		# instantiate the homepage on the same browser window
		BbcHomepage.new(@browser)
	end

	def sign_in_page
		# instatiate the sign in page on the same browser window
		BbcSignInPage.new(@browser)
	end

end