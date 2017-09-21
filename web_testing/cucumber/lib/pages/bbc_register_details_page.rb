require 'faker'

class Pages::BbcRegisterDetailsPage < SitePrism::Page

	REGISTER_DETAILS_URL = 'https://account.bbc.com/register/details?*'

	element :email_field, "input[type='email']"
	element :field_error_text, "div.form-message--password"
	element :submit_button, "button[id='submit-button']"

	@email = Faker::Internet.email

	def input_email
		email_field.set(@email)
	end

	def input_password(password)
		fill_in "Password", with: password
	end

	def click_submit
		submit_button.click
	end

	def password_field_error
		field_error_text.text
	end

end