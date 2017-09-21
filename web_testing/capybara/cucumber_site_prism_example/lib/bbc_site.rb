class BbcSite

	def bbc_homepage
		Pages::BbcHomePage.new
	end

	def bbc_sign_in_page
		Pages::BbcSignInPage.new
	end

end