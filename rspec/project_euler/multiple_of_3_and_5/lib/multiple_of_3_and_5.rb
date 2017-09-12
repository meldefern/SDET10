class MultipleOf3And5

	def initialise(empty_array, min_range_int, max_range_int)
		array_of_multiples = empty_array

		# loop the range
		for n in min_range_int..max_range_int
			fill_array(array_of_multiples, n)
		end

		# sum the array
		sum_of_array(array_of_multiples)
	end

	def fill_array(array_of_multiples, n)
		# call function checking if multuple of 3 or 5
		if divisible_by?(n)
			# if divisble by 3 or 5, add it to array
			array_of_multiples << n
		end
	end

	def divisible_by?(number)
		# return true if divisible by 3 or 5
		(number % 3).zero? || (number % 5).zero?
	end

	def sum_of_array(array)
		array.inject(0) {|sum, x| sum + x}
	end

end

mult = MultipleOf3And5.new

puts mult.initialise([], 1, 999)