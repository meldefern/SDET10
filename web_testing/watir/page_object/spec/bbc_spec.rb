describe "bbc sign in" do

	before(:all) do
		@chrome = BbcSite.new(:chrome)
	end

	it 'should access the homepage' do
		expect(@chrome.homepage.goto).to eq @chrome.homepage.current_url
	end

end