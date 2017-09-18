class BbcSignInPage

	def initialize(browser)
		@browser = browser

		# page objects
		@sign_in_url = 'https://account.bbc.com/signin'
		@username_input_id = 'username-input'
		@password_input_name = 'password'
		@button_id = 'submit-button'
		@form_error_class = 'form-message--error'
		@need_help_text = 'Need help signing in?'
	end

	# go to the sign in page
	def access_sign_in_page
		@browser.goto(@sign_in_url)
	end

	# username text_field object
	def email_or_username_field
		@browser.text_field(id: @username_input_id)
	end

	# password text_field object
	def password_field
		@browser.text_field(name: @password_input_name)
	end

	# sign in button object
	def sign_in_button
		@browser.button(id: @button_id)
	end

	# set username or email address in email or username field object
	def add_email_or_username(username_or_email)
		email_or_username_field.set(username_or_email)
	end

	# set password in password text_field object
	def add_password(user_password)
		password_field.set(user_password)
	end

	# click sign in button
	def click_sign_in_button
		sign_in_button.click
	end

	# sign in error classifier object on page
	def sign_in_error
		@browser.div(class: @form_error_class)
	end

	# need help signing in link object
	def need_help_link
		@browser.span(text: @need_help_text)
	end

end