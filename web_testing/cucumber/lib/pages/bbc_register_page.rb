class Pages::BbcRegisterPage < SitePrism::Page

	REGISTER_PAGE_URL = 'https://account.bbc.com/register?*'

	element :input_day_field, "input[id='day-input']"
	element :input_month_field, "input[id='month-input']"
	element :input_year_field, "input[id='year-input']"
	element :submit_button, "button[id='submit-button']"

	def input_day
		input_day_field.set('9')
	end

	def input_month
		input_month_field.set('8')
	end

	def input_year
		input_year_field.set('1993')
	end

	def click_submit
		submit_button.click
	end

end