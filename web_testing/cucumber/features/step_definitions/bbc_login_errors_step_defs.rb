Given(/^I am on the BBC home page$/) do
 	@bbc_site = BbcSite.new
	@bbc_site.bbc_homepage.go_to_homepage
end

And(/^I move to the sign in page$/) do
	@bbc_site.bbc_homepage.go_to_sign_in_page
end

When(/^I proceed to register$/) do
	@bbc_site.bbc_sign_in_page.go_to_register_page
end

And(/^I input my DOB$/) do
	@bbc_site.bbc_register_page.input_day
	@bbc_site.bbc_register_page.input_month
	@bbc_site.bbc_register_page.input_year
	@bbc_site.bbc_register_page.click_submit
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
	@bbc_site.bbc_register_details_page.input_email
	@bbc_site.bbc_register_details_page.input_password(password)
	@bbc_site.bbc_register_details_page.click_submit
end

Then(/^I receive the corresponding error (.*)$/) do |error|
	expect(@bbc_site.bbc_register_details_page.password_field_error).to eq(error)
end