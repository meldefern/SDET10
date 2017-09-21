class Pages::BbcSignInPage < SitePrism::Page

	set_url "https://account.bbc.com/signin"
	set_url_matcher "/account.bbc.com/"

	# element :email_field, "input[id='username-input']"
	element :submit_button, "button[id='submit-button']"

	def fill_in_email(email)
		fill_in 'Email', with: email
	end

	def fill_in_password(password)
		fill_in 'Password', with: password
	end

	def click_submit_button
		submit_button.click
	end

end