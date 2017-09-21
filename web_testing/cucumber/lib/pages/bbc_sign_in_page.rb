class Pages::BbcSignInPage < SitePrism::Page
	include Capybara::DSL

	SIGN_IN_PAGE_URL = 'https://account.bbc.com/signin'

	element :sign_up_link, "a.link--primary"

	def go_to_sign_in_page
		visit(SIGN_IN_PAGE_URL)
	end

	def go_to_register_page
		sign_up_link.click
	end

end