class BbcHomepage

	def initialize(browser)
		@browser = browser

		# page objects
		@homepage_url = 'https://www.bbc.co.uk/'
		@sign_in_link_text = 'idcta-link'
	end

	# go to the homepage url
	def access_homepage
		@browser.goto(@homepage_url)
	end

	# sign in button objects
	def sign_in_link
		@browser.link(id: @sign_in_link_text)
	end

	# click sign in button
	def click_sign_in_link
		sign_in_link.click
	end

end