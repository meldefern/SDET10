class BbcSite

	def bbc_homepage
		Pages::BbcHomepage.new
	end

	def bbc_sign_in_page
		Pages::BbcSignInPage.new
	end

	def bbc_register_page
		Pages::BbcRegisterPage.new
	end

	def bbc_register_details_page
		Pages::BbcRegisterDetailsPage.new
	end

end