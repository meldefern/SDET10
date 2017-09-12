describe EvenFibonacci do

	before(:each) do
		@even_fib = EvenFibonacci.new
	end

	it 'should calculate the sum of the previous two terms' do
		expect(@even_fib.sum_of_last_two([1,2])).to eq 3
	end

	it 'should return true if value is greater than 4 million' do
		expect(@even_fib.is_greater_than_4m?(40000001)).to be true
	end

	it 'should return true if the sum of the even valued terms is even' do
		expect(@even_fib.sum_of_even(2) % 2).to eq 0
	end

	it 'should return the sum of even numbers up to given maximum iterations' do
		expect(@even_fib.even_fibonacci(10)).to eq 44
	end
end