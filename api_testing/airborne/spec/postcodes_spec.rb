describe "postcodes.io" do

	before(:all) do
		@json = get 'http://api.postcodes.io/postcodes/ig13rn'
	end


	it 'expect status 200' do
		expect_status(200)
	end

	it 'should check json keys in results' do
		expect_json_keys('result', [:postcode, :country, :parish])
	end

	it 'should check the types of json property values returned' do
		expect_json_types('result', postcode: :string, quality: :integer)
	end

	it 'should expect country to be England, Scotland, Wales, NI' do
		expect_json('result', country: 'England' || 'Scotland' || 'Wales' || 'Northen Ireland')
	end

	it 'should expect codes hash to be of size 6' do
		expect_json_sizes('result', codes: 6)
	end

	it 'should test header is json' do
		expect_header(:content_type, 'application/json; charset=utf-8')
		expect_header(:connection, 'keep-alive')
	end

	it 'should expect header to contain nginx' do
		expect_header_contains(:server, 'nginx')
	end

end