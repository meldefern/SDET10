Given(/^I can access the bbc homepage$/) do
  @bbcwebsite = BbcSite.new
  @bbcwebsite.bbc_homepage.load
  @bbcwebsite.bbc_homepage.displayed?
end

And(/^I am able to click sign in$/) do
	@bbcwebsite.bbc_homepage.click_sign_in_link
  # click_link('idcta-link')
end

When(/^I enter valid login details$/) do
	@bbcwebsite.bbc_sign_in_page.fill_in_email('minnymf@hotmail.com')
	@bbcwebsite.bbc_sign_in_page.fill_in_password('1234test')
  # fill_in 'Email', with: 'minnymf@hotmail.com'
  # fill_in 'Password', with: '1234test'
end

And(/^I click sign in$/) do
	@bbcwebsite.bbc_sign_in_page.click_submit_button
  # click_button('submit-button')
end

Then(/^I have been signed in$/) do
	pending
  # find_all('Your account')
end

When(/^I enter invalid login details$/) do
	@bbcwebsite.bbc_sign_in_page.fill_in_email('minnymf@hotmail.com')
	@bbcwebsite.bbc_sign_in_page.fill_in_password('123')
  # fill_in 'Email', with: 'minnymf@hotmail.com'
  # fill_in 'Password', with: '567565'
end

Then(/^I receive an error$/) do
	pending
  # find('.form-message--error')
end