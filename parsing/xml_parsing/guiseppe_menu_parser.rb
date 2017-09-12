require 'nokogiri'

doc = Nokogiri::XML(open('guiseppe_menu.xml'))

# puts doc.search('price').children



doc.search('price').each do |price|
	puts price.text.gsub('£', '').to_f
end

