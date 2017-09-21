describe 'buying item' do

	before(:all) do
		@chrome = Capybara::Session.new(:chrome)
	end

	it 'should access homepage' do
		@chrome.visit 'http://store.demoqa.com/'
	end

	it 'should select the second menu item' do
		@chrome.find(:xpath, '//*[@id="slide_menu"]/a[2]').click
	end

	it 'should direct to the object page after clicking Buy Now' do
		sleep(1)
		@chrome.find(:xpath, '//*[@id="slides"]/div[1]/div[3]/div/a/span').click
		# binding.pry
	end

	it 'should add item to basket' do
		@chrome.find('#single_product_page_container > div.single_product_display.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy').click
		sleep(3)
	end

end

# describe "checkout and pay for an item" do 

# 	before(:all) do
# 		@chrome = Capybara::Session.new(:chrome)
# 	end

# 	it "should access the " do
# 		@chrome.visit 'http://store.demoqa.com/'
# 	end

# 	it "should allow me to select a carousel object" do
# 		@chrome.all(:xpath, '//*[@id="slide_menu"]/a')[1].click
# 	end

# 	it "should allow me to click the buy now button for iphone" do
# 		@chrome.find('span', text: 'Buy Now').click
# 	end

# 	it "should allow me to click the add to cart button for iphone" do
# 		@chrome.find('.input-button-buy').click
# 	end

# 	it "should allow me to click go to checkout" do
# 		@chrome.find('.go_to_checkout').click
# 	end

# 	it "should allow me to continue with my payment" do
# 		@chrome.find('.step2').click
# 	end

# end