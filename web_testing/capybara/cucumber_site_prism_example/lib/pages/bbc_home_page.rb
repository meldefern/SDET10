class Pages::BbcHomePage < SitePrism::Page

	# page object model

	set_url "https://www.bbc.co.uk"
	set_url_matcher '/bbc.co*/'

	element :sign_in_link, "a[id='idcta-link']"

	def click_sign_in_link
		sign_in_link.click
	end

end