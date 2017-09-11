module Mammals

	# do not instantiate modules
	def self.common_traits
		puts 'Mammals have lungs, all express milk, have vertebrae, warm blooded'
	end

	class Quadruped
		def self.four_legs
			puts 'heyy ive got 4 legs'
		end
	end

	class Biped
		def self.two_legs
			puts 'heyy ive got 2 legs'
		end
	end

end

# Mammals.common_traits

# fox = Mammals::Biped.new

# fox.two_legs