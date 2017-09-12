require 'json'

file = JSON.parse(File.read('colours.json'))

array_length = file['colors'].length
colour_array = file['colors']

for n in 0...array_length
	puts "For #{colour_array[n]['color']}, the rgba code is: #{colour_array[n]['code']['rgba']}, and the hex code is #{colour_array[n]['code']['hex']}"
end