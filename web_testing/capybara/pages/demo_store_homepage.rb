class DemoStoreHomepage

	def initialize(browser)
		@browser = browser

		@homepage_url = 'http://store.demoqa.com/'
	end

	def access_homepage
		chrome.visit(@homepage_url)
	end

end