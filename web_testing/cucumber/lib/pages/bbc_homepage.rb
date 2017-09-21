class Pages::BbcHomepage < SitePrism::Page
	include Capybara::DSL

	HOMEPAGE_URL = 'https://www.bbc.co.uk/'

	element :sign_in_link, "a[id='idcta-link']"

	def go_to_homepage
		visit(HOMEPAGE_URL)
	end

	def go_to_sign_in_page
		sign_in_link.click
	end

end