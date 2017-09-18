require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
    @food = @xml_menu.xpath('//food')

  end

  it "no price should be more than £10" do
  	@food.each do |food|
  		@price = food.search('price').text.gsub('£', '').to_f
  		expect(@price).to be < 10
  	end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
  	@food.each do |food|
  		if food.search('name').text != 'Full Breakfast'
  			@calories = food.search('calories').text.to_i
  			expect(@calories.to_i).to be < 1000
  		end
  	end
  end

  it "should have all waffle dishes stating you get two waffles" do
  	@food.each do |food|
  		if food.search('name').text.include?('Waffles')
  			expect(food.search('description').text.include?('Two')).to be true
  		end
  	end
  end


end