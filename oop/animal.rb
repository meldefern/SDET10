require_relative 'living_organism'

class Animal < LivingOrganism

	# class methods
	def self.traits
		puts 'animals can breathe, eat, procreate'
	end

	# instance methods
	def breathe
		puts 'inhale and exhale'
	end

	def pro_create
		puts 'where the magic happens'
	end

	def eat
		puts 'nom nom nom'
	end

	def speak
		puts 'hello'
	end

end

Animal.traits

cheetah = Animal.new

#cheetah.breathe