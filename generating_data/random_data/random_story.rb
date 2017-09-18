require 'faker'
require 'forgery'

name = Faker::Name.name
address = Forgery('address').street_address
colour1 = Forgery('basic').color
colour2 = Forgery('basic').color
coffeenotes = Faker::Coffee.notes
coffeeblend = Faker::Coffee.blend_name
familyguycharacter = Faker::FamilyGuy.character
rickandmortyquote = Faker::RickAndMorty.quote


puts "#{name}, of #{address}, loves their coffee. They can tell you all you need to know about the #{Faker::Coffee.notes} notes of the #{coffeeblend} coffee blend. But if you ask them what colour the #{colour1} coffee pot is, they'll tell you it's #{colour2}. They're NOT colour blind, just impossibly difficult."
puts "If you say to #{name}, \n'hey, did you catch the News at 10, last night?', you're likely to hear back \n'Yeah, #{familyguycharacter} was great in it. When they said '#{rickandmortyquote}', suddenly my existence made sense."