require 'nokogiri'

doc = Nokogiri::XML(open('guiseppe_menu.xml'))

# puts doc.search('price').children



# doc.search('price').each do |price|
# 	p price.text.gsub('£', '').to_f
# end

# puts doc.xpath('/breakfast_menu')

# puts doc.xpath('//food/*')

doc.xpath('//food').each do |i|
	puts i.search('price').text
end

