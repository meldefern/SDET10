describe 'bbc login failures' do

	before(:all) do
		# instantiate a new chrome browser
		@bbc_site = BbcSite.new(:chrome)
		# instantiate a random email and password
		@email = Faker::Internet.email
		@password = Faker::Code.asin
	end

	it 'should access the homepage and click sign in link if it exists' do
		@bbc_site.homepage.access_homepage
		@bbc_site.homepage.sign_in_link.exists?
		@bbc_site.homepage.click_sign_in_link
	end

	it 'should enter an email address and password in the username input field' do
		@bbc_site.sign_in_page.access_sign_in_page
		@bbc_site.sign_in_page.add_email_or_username(@email)
		@bbc_site.sign_in_page.add_password(@password)
	end

	it 'should return an error page after clicking sign in' do
		@bbc_site.sign_in_page.click_sign_in_button
		@bbc_site.sign_in_page.sign_in_error.exists?
	end

end