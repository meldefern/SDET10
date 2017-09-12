describe MultipleOf3And5 do

	before(:each) do
		@multiples = MultipleOf3And5.new
		@empty_array = []
	end

	it 'should return true if the number is a multiple of 3' do
		expect(@multiples.divisible_by?(3)).to eq true
	end

	it 'should return true if the number is a multiple of 5' do
		expect(@multiples.divisible_by?(5)).to eq true
	end

	it 'should should return an array of multiples of 3 or 5' do
		expect(@multiples.fill_array([], 3)[0]).to eq 3
		expect(@multiples.fill_array([], 5)[0]).to eq 5

	end

	it 'should return the sum of the array' do
		expect(@multiples.sum_of_array([1,2,3])).to eq 6
	end

end