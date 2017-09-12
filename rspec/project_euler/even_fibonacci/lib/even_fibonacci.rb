class EvenFibonacci

	attr_accessor :first_term, :second_term, :even_sum, :empty_array

	def initialize
		@first_term = 1
		@second_term = 2
		@even_sum = @second_term
		@empty_array = []
	end

	def even_fibonacci(max_range_int)

		fibonacci_array = @empty_array
		fibonacci_array << @first_term << @second_term

		(max_range_int-2).times do
			# calculate next value and add to end of fibonacci array
			fibonacci_array[2] = sum_of_last_two(fibonacci_array)

			# if new value > 4million, set the last two positions to 0 to stop summing
			if is_greater_than_4m?(fibonacci_array[2])
				fibonacci_array[2] = 0
				fibonacci_array[1] = 0
			end

			# if term is even, calculate sum
			if fibonacci_array[2].even?
				sum_of_even(fibonacci_array[2])
			end

			# rearrange positions in 3 element array using previous_terms method
			previous_terms(fibonacci_array)
		end

		@even_sum
	end

	def sum_of_even(even)
		@even_sum += even
	end

	def is_greater_than_4m?(term)
		term > 4000000
	end

	def sum_of_last_two(array)

		array[0] + array[1]
	end

	def previous_terms(array)
		array[0] = array[1]
		array[1] = array[2]
	end


end